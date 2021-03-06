package org.batfish.client.config;

import org.batfish.common.BaseSettings;
import org.batfish.common.BatfishLogger;
import org.batfish.common.BfConsts;
import org.batfish.common.CoordConsts;

public class Settings extends BaseSettings {

  public enum RunMode {
    batch,
    interactive
  }

  private static final String ARG_API_KEY = "apikey";
  public static final String ARG_BATFISH_LOG_LEVEL = "batfishloglevel";
  public static final String ARG_COMMAND_FILE = "cmdfile";
  public static final String ARG_CONTAINER_ID = "containerid";
  public static final String ARG_COORDINATOR_HOST = "coordinatorhost";
  public static final String ARG_DATAMODEL_DIR = "datamodeldir";
  private static final String ARG_HELP = "help";
  public static final String ARG_LOG_FILE = "logfile";
  public static final String ARG_LOG_LEVEL = "loglevel";
  private static final String ARG_NO_SANITY_CHECK = "nosanitycheck";
  private static final String ARG_PERIOD_CHECK_WORK = "periodcheckworkms";
  public static final String ARG_QUESTIONS_DIR = "questionsdir";
  public static final String ARG_RUN_MODE = "runmode";
  public static final String ARG_SERVICE_NAME = "servicename";
  private static final String ARG_SERVICE_WORK_PORT = "coordinatorworkport";
  private static final String ARG_SERVICE_WORK_V2_PORT = "coordinatorworkv2port";
  public static final String ARG_SNAPSHOT_DIR = "snapshotdir";
  public static final String ARG_SNAPSHOT_ID = "snapshotid";
  private static final String ARG_TRACING_AGENT_HOST = "tracingagenthost";
  private static final String ARG_TRACING_AGENT_PORT = "tracingagentport";
  public static final String ARG_TRACING_ENABLE = "tracingenable";
  private static final String DEPRECATED_ARG_DESC =
      "(ignored, provided for backwards compatibility)";
  private static final String EXECUTABLE_NAME = "batfish_client";

  private String _apiKey;
  private String _batchCommandFile;
  private String _batfishLogLevel;
  private String _containerId;
  private String _coordinatorHost;
  private int _coordinatorWorkPort;
  private int _coordinatorWorkV2Port;
  private String _datamodelDir;
  private String _logFile;
  private String _logLevel;
  private long _periodCheckWorkMs;
  private String _questionsDir;

  private RunMode _runMode;
  private boolean _sanityCheck;
  private String _serviceName;
  private String _snapshotDir;
  private String _snapshotId;
  private String _tracingAgentHost;
  private Integer _tracingAgentPort;
  private boolean _tracingEnable;

  public Settings(String[] args) {
    super(
        getConfig(
            BfConsts.PROP_CLIENT_PROPERTIES_PATH,
            BfConsts.ABSPATH_CONFIG_FILE_NAME_CLIENT,
            ConfigurationLocator.class));

    initConfigDefaults();

    initOptions();
    parseCommandLine(args);
  }

  public String getApiKey() {
    return _apiKey;
  }

  public String getBatchCommandFile() {
    return _batchCommandFile;
  }

  public String getBatfishLogLevel() {
    return _batfishLogLevel;
  }

  public String getContainerId() {
    return _containerId;
  }

  public String getCoordinatorHost() {
    return _coordinatorHost;
  }

  public int getCoordinatorWorkPort() {
    return _coordinatorWorkPort;
  }

  public int getCoordinatorWorkV2Port() {
    return _coordinatorWorkV2Port;
  }

  public String getDatamodelDir() {
    return _datamodelDir;
  }

  public String getLogFile() {
    return _logFile;
  }

  public String getLogLevel() {
    return _logLevel;
  }

  public long getPeriodCheckWorkMs() {
    return _periodCheckWorkMs;
  }

  public String getQuestionsDir() {
    return _questionsDir;
  }

  public RunMode getRunMode() {
    return _runMode;
  }

  public boolean getSanityCheck() {
    return _sanityCheck;
  }

  public String getServiceName() {
    return _serviceName;
  }

  public String getSnapshotDir() {
    return _snapshotDir;
  }

  public String getSnapshotId() {
    return _snapshotId;
  }

  public Integer getTracingAgentPort() {
    return _tracingAgentPort;
  }

  public String getTracingAgentHost() {
    return _tracingAgentHost;
  }

  public boolean getTracingEnable() {
    return _tracingEnable;
  }

  private void initConfigDefaults() {
    setDefaultProperty(ARG_API_KEY, CoordConsts.DEFAULT_API_KEY);
    setDefaultProperty(
        ARG_BATFISH_LOG_LEVEL, BatfishLogger.getLogLevelStr(BatfishLogger.LEVEL_WARN));
    setDefaultProperty(ARG_COORDINATOR_HOST, "localhost");
    setDefaultProperty(ARG_DATAMODEL_DIR, "datamodel");
    setDefaultProperty(ARG_HELP, false);
    setDefaultProperty(ARG_LOG_FILE, null);
    setDefaultProperty(ARG_LOG_LEVEL, BatfishLogger.getLogLevelStr(BatfishLogger.LEVEL_OUTPUT));
    setDefaultProperty(ARG_NO_SANITY_CHECK, false);
    setDefaultProperty(ARG_PERIOD_CHECK_WORK, 1000);
    setDefaultProperty(ARG_RUN_MODE, RunMode.batch.toString());
    setDefaultProperty(ARG_SERVICE_NAME, "client-service");
    setDefaultProperty(ARG_SERVICE_WORK_PORT, CoordConsts.SVC_CFG_WORK_PORT);
    setDefaultProperty(ARG_SERVICE_WORK_V2_PORT, CoordConsts.SVC_CFG_WORK_V2_PORT);
    setDefaultProperty(ARG_TRACING_AGENT_HOST, "localhost");
    setDefaultProperty(ARG_TRACING_AGENT_PORT, 5775);
    setDefaultProperty(ARG_TRACING_ENABLE, false);
  }

  private void initOptions() {
    addOption(ARG_API_KEY, "API key for the coordinator", "apikey");

    addOption(ARG_COMMAND_FILE, "read commands from the specified command file", "cmdfile");

    addOption(ARG_COORDINATOR_HOST, "hostname for the service", "base url for coordinator service");

    addOption(ARG_BATFISH_LOG_LEVEL, "org.batfish.log level for batfish", "batfish_loglevel");

    addOption(ARG_CONTAINER_ID, "network to attach to", "network_id");

    addOption(ARG_DATAMODEL_DIR, "directory where datamodel should be dumped", "datamodel_dir");

    addBooleanOption(ARG_HELP, "print this message");

    addOption(ARG_LOG_FILE, "send output to specified org.batfish.log file", "logfile");

    addOption(ARG_LOG_LEVEL, "org.batfish.log level", "loglevel");

    addBooleanOption(
        ARG_NO_SANITY_CHECK, "do not check if network, snapshot etc. are set. (helps debugging.)");

    addOption(
        ARG_PERIOD_CHECK_WORK, "period with which to check work (ms)", "period_check_work_ms");

    addOption(ARG_QUESTIONS_DIR, "directory to output questions in", "questions_dir");

    addOption(ARG_RUN_MODE, "which mode to run in (batch|interactive|genquestions)", "run_mode");

    addOption(ARG_SERVICE_NAME, "service name", "service_name");

    addOption(
        ARG_SERVICE_WORK_PORT, "port for work management service", "port_number_work_service");

    addOption(ARG_SNAPSHOT_DIR, "where the snapshot sits", "snapshot_dir");

    addOption(ARG_SNAPSHOT_ID, "snapshot to attach to", "snapshot_id");

    addOption(ARG_TRACING_AGENT_HOST, "jaeger agent host", "jaeger_agent_host");

    addOption(ARG_TRACING_AGENT_PORT, "jaeger agent port", "jaeger_agent_port");

    addBooleanOption(ARG_TRACING_ENABLE, "enable tracing");

    // deprecated and ignored
    for (String deprecatedStringArg :
        new String[] {
          "ssldisable",
          "sslkeystorefile",
          "sslkeystorepassword",
          "ssltrustallcerts",
          "ssltruststorefile",
          "ssltruststorepassword",
        }) {
      addOption(deprecatedStringArg, DEPRECATED_ARG_DESC, "ignored");
    }
    for (String deprecatedBooleanArg : new String[] {"gs"}) {
      addBooleanOption(deprecatedBooleanArg, DEPRECATED_ARG_DESC);
    }
  }

  private void parseCommandLine(String[] args) {
    initCommandLine(args);

    if (getBooleanOptionValue(ARG_HELP)) {
      printHelp(EXECUTABLE_NAME);
      System.exit(0);
    }

    _apiKey = getStringOptionValue(ARG_API_KEY);
    _batchCommandFile = getStringOptionValue(ARG_COMMAND_FILE);
    _batfishLogLevel = getStringOptionValue(ARG_BATFISH_LOG_LEVEL);
    _containerId = getStringOptionValue(ARG_CONTAINER_ID);
    _datamodelDir = getStringOptionValue(ARG_DATAMODEL_DIR);
    _logFile = getStringOptionValue(ARG_LOG_FILE);
    _logLevel = getStringOptionValue(ARG_LOG_LEVEL);
    _periodCheckWorkMs = getLongOptionValue(ARG_PERIOD_CHECK_WORK);
    _questionsDir = getStringOptionValue(ARG_QUESTIONS_DIR);
    _runMode = RunMode.valueOf(getStringOptionValue(ARG_RUN_MODE));
    _sanityCheck = !getBooleanOptionValue(ARG_NO_SANITY_CHECK);
    _serviceName = getStringOptionValue(ARG_SERVICE_NAME);
    _tracingAgentHost = getStringOptionValue(ARG_TRACING_AGENT_HOST);
    _tracingAgentPort = getIntegerOptionValue(ARG_TRACING_AGENT_PORT);
    _tracingEnable = getBooleanOptionValue(ARG_TRACING_ENABLE);

    _snapshotDir = getStringOptionValue(ARG_SNAPSHOT_DIR);
    _snapshotId = getStringOptionValue(ARG_SNAPSHOT_ID);

    _coordinatorHost = getStringOptionValue(ARG_COORDINATOR_HOST);
    _coordinatorWorkPort = getIntegerOptionValue(ARG_SERVICE_WORK_PORT);
    _coordinatorWorkV2Port = getIntegerOptionValue(ARG_SERVICE_WORK_V2_PORT);
  }

  public void setBatfishLogLevel(String logLevel) {
    _batfishLogLevel = logLevel;
  }

  public void setCoordinatorWorkPort(int coordinatorWorkPort) {
    _coordinatorWorkPort = coordinatorWorkPort;
  }

  public void setCoordinatorWorkV2Port(int port) {
    _coordinatorWorkV2Port = port;
  }

  public void setLogLevel(String logLevel) {
    _logLevel = logLevel;
  }
}
