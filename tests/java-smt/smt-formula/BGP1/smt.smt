(declare-fun |0_dst-port| () Int)
(declare-fun |0_src-port| () Int)
(declare-fun |0_ip-protocol| () Int)

(declare-fun |0_r2_OVERALL_BEST_None_routerID| () Int)
(declare-fun |0_r2_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_r2_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_r1_OVERALL_BEST_None_routerID| () Int)
(declare-fun |0_r1_OVERALL_BEST_None_adminDist| () Int)
(declare-fun |0_r1_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_r1_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_r1_BGP_BEST_None_routerID| () Int)
(declare-fun |0_r1_BGP_BEST_None_metric| () Int)
(declare-fun |0_r1_BGP_BEST_None_prefixLength| () Int)
(declare-fun |0_r1_CONNECTED_BEST_None_prefixLength| () Int)
//
(declare-fun |0_r2_BGP_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_r2_BGP_SINGLE-EXPORT__prefixLength| () Int)
//
(declare-fun |0_r1_BGP_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_r1_BGP_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_r1_CONNECTED_IMPORT_Loopback0_prefixLength| () Int)
//
(declare-fun |0_r2_BGP_SINGLE-EXPORT__permitted| () Bool)
(declare-fun |0_dst-ip| () (_ BitVec 32))
(declare-fun |0_r2_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_r1_BGP_SINGLE-EXPORT__permitted| () Bool)
(declare-fun |0_r1_OVERALL_BEST_None_history| () (_ BitVec 1))
(declare-fun |0_r1_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_r1_CONNECTED_IMPORT_Loopback0_permitted| () Bool)
(declare-fun |0_r1_BGP_BEST_None_permitted| () Bool)
(declare-fun |0_r1_CONNECTED_BEST_None_permitted| () Bool)
(declare-fun |0_r2_BGP_IMPORT_Serial0_choice| () Bool)
(declare-fun |0_r1_BGP_IMPORT_Serial0_choice| () Bool)
(declare-fun |0_r1_CONNECTED_IMPORT_Loopback0_choice| () Bool)
(declare-fun |0_CONTROL-FORWARDING_r2_Serial0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_r2_Loopback0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_r1_Serial0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_r1_Loopback0| () Bool)
(declare-fun |0_DATA-FORWARDING_r2_Loopback0| () Bool)
(declare-fun |0_DATA-FORWARDING_r2_Serial0| () Bool)
(declare-fun |0_DATA-FORWARDING_r1_Loopback0| () Bool)
(declare-fun |0_DATA-FORWARDING_r1_Serial0| () Bool)
(declare-fun |0__reachable-id_r2| () Int)
(declare-fun |0__reachable_r2| () Bool)
(declare-fun |0__reachable-id_r1| () Int)
(declare-fun |0__reachable_r1| () Bool)





(assert (>= |0_dst-port| 0))
(assert (>= |0_src-port| 0))
(assert (< |0_dst-port| 65536))
(assert (< |0_src-port| 65536))

(assert (>= |0_ip-protocol| 0))

(assert (<= |0_ip-protocol| 256))

(assert (>= |0_r2_OVERALL_BEST_None_routerID| 0))
(assert (>= |0_r2_OVERALL_BEST_None_metric| 0))
(assert (< |0_r2_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_r2_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_r2_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_r1_OVERALL_BEST_None_routerID| 0))
(assert (>= |0_r1_OVERALL_BEST_None_adminDist| 0))
(assert (< |0_r1_OVERALL_BEST_None_adminDist| 256))
(assert (>= |0_r1_OVERALL_BEST_None_metric| 0))
(assert (< |0_r1_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_r1_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_r1_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_r1_BGP_BEST_None_routerID| 0))
(assert (>= |0_r1_BGP_BEST_None_metric| 0))
(assert (< |0_r1_BGP_BEST_None_metric| 65536))
(assert (>= |0_r1_BGP_BEST_None_prefixLength| 0))
(assert (<= |0_r1_BGP_BEST_None_prefixLength| 32))
(assert (>= |0_r1_CONNECTED_BEST_None_prefixLength| 0))
(assert (<= |0_r1_CONNECTED_BEST_None_prefixLength| 32))
(assert (>= |0_r2_BGP_SINGLE-EXPORT__metric| 0))
(assert (< |0_r2_BGP_SINGLE-EXPORT__metric| 65536))
(assert (>= |0_r2_BGP_SINGLE-EXPORT__prefixLength| 0))
(assert (<= |0_r2_BGP_SINGLE-EXPORT__prefixLength| 32))
(assert (>= |0_r1_BGP_SINGLE-EXPORT__metric| 0))
(assert (< |0_r1_BGP_SINGLE-EXPORT__metric| 65536))
(assert (>= |0_r1_BGP_SINGLE-EXPORT__prefixLength| 0))
(assert (<= |0_r1_BGP_SINGLE-EXPORT__prefixLength| 32))
(assert (>= |0_r1_CONNECTED_IMPORT_Loopback0_prefixLength| 0))
(assert (<= |0_r1_CONNECTED_IMPORT_Loopback0_prefixLength| 32))
(assert (let ((a!1 (ite (and (= |0_r2_OVERALL_BEST_None_prefixLength| 24)
                     (= (bvand |0_dst-ip| #xffffff00)
                        (bvand #x45454500 #xffffff00)))
                24
                |0_r2_OVERALL_BEST_None_prefixLength|)))
(let ((a!2 (and (= |0_r2_BGP_SINGLE-EXPORT__permitted|
                   |0_r2_OVERALL_BEST_None_permitted|)
                (= |0_r2_BGP_SINGLE-EXPORT__prefixLength| a!1)
                true
                true
                true
                (= |0_r2_BGP_SINGLE-EXPORT__metric|
                   (ite true (+ |0_r2_OVERALL_BEST_None_metric| 1) 1))
                true
                true
                true
                true
                true
                true
                true
                true)))
  (ite (and true
            true
            |0_r2_OVERALL_BEST_None_permitted|)
       (ite true
            (ite true a!2 (not |0_r2_BGP_SINGLE-EXPORT__permitted|))
            (not |0_r2_BGP_SINGLE-EXPORT__permitted|))
       (not |0_r2_BGP_SINGLE-EXPORT__permitted|)))))
(assert (let ((a!1 (or (= |0_r1_OVERALL_BEST_None_history| #b0)
               (and (= ((_ extract 31 8) |0_dst-ip|) #x2a2a2a)
                    (not (= |0_r1_OVERALL_BEST_None_history| #b0)))))
      (a!2 (ite (and (= 24 24)
                     (= (bvand |0_dst-ip| #xffffff00)
                        (bvand #x2a2a2a00 #xffffff00)))
                24
                |0_r1_OVERALL_BEST_None_prefixLength|)))
(let ((a!3 (and (= |0_r1_BGP_SINGLE-EXPORT__permitted|
                   |0_r1_OVERALL_BEST_None_permitted|)
                (= |0_r1_BGP_SINGLE-EXPORT__prefixLength| a!2)
                true
                true
                true
                (= |0_r1_BGP_SINGLE-EXPORT__metric|
                   (ite (= |0_r1_OVERALL_BEST_None_history| #b0)
                        (+ |0_r1_OVERALL_BEST_None_metric| 1)
                        1))
                true
                true
                true
                true
                true
                true
                true
                true)))
  (ite (and true
            true
            |0_r1_OVERALL_BEST_None_permitted|)
       (ite a!1
            (ite true a!3 (not |0_r1_BGP_SINGLE-EXPORT__permitted|))
            (not |0_r1_BGP_SINGLE-EXPORT__permitted|))
       (not |0_r1_BGP_SINGLE-EXPORT__permitted|)))))
(assert (ite (and true
          (= (bvand |0_dst-ip| #xffffff00) (bvand #x2a2a2a00 #xffffff00)))
     (and |0_r1_CONNECTED_IMPORT_Loopback0_permitted|
          (= |0_r1_CONNECTED_IMPORT_Loopback0_prefixLength| 24)
          true
          true
          true)
     (not |0_r1_CONNECTED_IMPORT_Loopback0_permitted|)))
(assert (=> |0_r2_OVERALL_BEST_None_permitted| true))
(assert (let ((a!1 (and true
                (or false
                    (and true (<= |0_r2_OVERALL_BEST_None_routerID| 707406337))))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and true
                (or (< |0_r2_OVERALL_BEST_None_metric|
                       |0_r1_BGP_SINGLE-EXPORT__metric|)
                    (and (= |0_r2_OVERALL_BEST_None_metric|
                            |0_r1_BGP_SINGLE-EXPORT__metric|)
                         (or false a!2))))))
(let ((a!4 (and (= |0_r2_OVERALL_BEST_None_prefixLength|
                   |0_r1_BGP_SINGLE-EXPORT__prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_r1_BGP_SINGLE-EXPORT__permitted|
      (or (> |0_r2_OVERALL_BEST_None_prefixLength|
             |0_r1_BGP_SINGLE-EXPORT__prefixLength|)
          a!4)))))))
(assert (= |0_r1_BGP_SINGLE-EXPORT__permitted| |0_r2_OVERALL_BEST_None_permitted|))
(assert (=> |0_r1_BGP_SINGLE-EXPORT__permitted|
    (and |0_r1_BGP_SINGLE-EXPORT__permitted|
         (= |0_r2_OVERALL_BEST_None_prefixLength|
            |0_r1_BGP_SINGLE-EXPORT__prefixLength|)
         true
         true
         (= |0_r2_OVERALL_BEST_None_metric| |0_r1_BGP_SINGLE-EXPORT__metric|)
         true
         true
         true
         (= |0_r2_OVERALL_BEST_None_routerID| 707406337)
         true
         true
         true
         true
         true)))
(assert (let ((a!1 (and true
                (or false
                    (and true (<= |0_r1_BGP_BEST_None_routerID| 1162167553))))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and true
                (or (< |0_r1_BGP_BEST_None_metric|
                       |0_r2_BGP_SINGLE-EXPORT__metric|)
                    (and (= |0_r1_BGP_BEST_None_metric|
                            |0_r2_BGP_SINGLE-EXPORT__metric|)
                         (or false a!2))))))
(let ((a!4 (and (= |0_r1_BGP_BEST_None_prefixLength|
                   |0_r2_BGP_SINGLE-EXPORT__prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_r2_BGP_SINGLE-EXPORT__permitted|
      (or (> |0_r1_BGP_BEST_None_prefixLength|
             |0_r2_BGP_SINGLE-EXPORT__prefixLength|)
          a!4)))))))
(assert (= |0_r2_BGP_SINGLE-EXPORT__permitted| |0_r1_BGP_BEST_None_permitted|))
(assert (=> |0_r2_BGP_SINGLE-EXPORT__permitted|
    (and |0_r2_BGP_SINGLE-EXPORT__permitted|
         (= |0_r1_BGP_BEST_None_prefixLength|
            |0_r2_BGP_SINGLE-EXPORT__prefixLength|)
         true
         true
         (= |0_r1_BGP_BEST_None_metric| |0_r2_BGP_SINGLE-EXPORT__metric|)
         true
         true
         true
         (= |0_r1_BGP_BEST_None_routerID| 1162167553)
         true
         true
         true
         true
         true)))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (or false (and true (or false (and true a!2))))))
(let ((a!4 (or (> |0_r1_CONNECTED_BEST_None_prefixLength|
                  |0_r1_CONNECTED_IMPORT_Loopback0_prefixLength|)
               (and (= |0_r1_CONNECTED_BEST_None_prefixLength|
                       |0_r1_CONNECTED_IMPORT_Loopback0_prefixLength|)
                    (or false (and true a!3))))))
  (=> |0_r1_CONNECTED_IMPORT_Loopback0_permitted| a!4))))))
(assert (= |0_r1_CONNECTED_IMPORT_Loopback0_permitted|
   |0_r1_CONNECTED_BEST_None_permitted|))
(assert (=> |0_r1_CONNECTED_IMPORT_Loopback0_permitted|
    (and |0_r1_CONNECTED_IMPORT_Loopback0_permitted|
         (= |0_r1_CONNECTED_BEST_None_prefixLength|
            |0_r1_CONNECTED_IMPORT_Loopback0_prefixLength|)
         true
         true
         true
         true
         true
         true
         true
         true
         true
         true
         true
         true)))
(assert (= |0_r2_BGP_IMPORT_Serial0_choice|
   (and |0_r1_BGP_SINGLE-EXPORT__permitted|
        (= |0_r2_OVERALL_BEST_None_prefixLength|
           |0_r1_BGP_SINGLE-EXPORT__prefixLength|)
        true
        true
        (= |0_r2_OVERALL_BEST_None_metric| |0_r1_BGP_SINGLE-EXPORT__metric|)
        true
        true
        true
        (= |0_r2_OVERALL_BEST_None_routerID| 707406337)
        true
        true
        true
        true
        true)))
(assert (= |0_r1_BGP_IMPORT_Serial0_choice|
   (and |0_r2_BGP_SINGLE-EXPORT__permitted|
        (= |0_r1_BGP_BEST_None_prefixLength|
           |0_r2_BGP_SINGLE-EXPORT__prefixLength|)
        true
        true
        (= |0_r1_BGP_BEST_None_metric| |0_r2_BGP_SINGLE-EXPORT__metric|)
        true
        true
        true
        (= |0_r1_BGP_BEST_None_routerID| 1162167553)
        true
        true
        true
        true
        true)))
(assert (= |0_r1_CONNECTED_IMPORT_Loopback0_choice|
   (and |0_r1_CONNECTED_IMPORT_Loopback0_permitted|
        (= |0_r1_CONNECTED_BEST_None_prefixLength|
           |0_r1_CONNECTED_IMPORT_Loopback0_prefixLength|)
        true
        true
        true
        true
        true
        true
        true
        true
        true
        true
        true
        true)))
(assert (let ((a!1 (and true
                (or false
                    (and true
                         (<= |0_r1_OVERALL_BEST_None_routerID|
                             |0_r1_BGP_BEST_None_routerID|))))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and true
                (or (< |0_r1_OVERALL_BEST_None_metric|
                       |0_r1_BGP_BEST_None_metric|)
                    (and (= |0_r1_OVERALL_BEST_None_metric|
                            |0_r1_BGP_BEST_None_metric|)
                         (or false a!2))))))
(let ((a!4 (and (= |0_r1_OVERALL_BEST_None_prefixLength|
                   |0_r1_BGP_BEST_None_prefixLength|)
                (or (< |0_r1_OVERALL_BEST_None_adminDist| 20)
                    (and (= |0_r1_OVERALL_BEST_None_adminDist| 20)
                         (or false a!3))))))
  (=> |0_r1_BGP_BEST_None_permitted|
      (or (> |0_r1_OVERALL_BEST_None_prefixLength|
             |0_r1_BGP_BEST_None_prefixLength|)
          a!4)))))))
(assert (let ((a!1 (and true
                (or false (and true (<= |0_r1_OVERALL_BEST_None_routerID| 0))))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and true
                (or (< |0_r1_OVERALL_BEST_None_metric| 0)
                    (and (= |0_r1_OVERALL_BEST_None_metric| 0) (or false a!2))))))
(let ((a!4 (and (= |0_r1_OVERALL_BEST_None_prefixLength|
                   |0_r1_CONNECTED_BEST_None_prefixLength|)
                (or (< |0_r1_OVERALL_BEST_None_adminDist| 0)
                    (and (= |0_r1_OVERALL_BEST_None_adminDist| 0)
                         (or false a!3))))))
  (=> |0_r1_CONNECTED_BEST_None_permitted|
      (or (> |0_r1_OVERALL_BEST_None_prefixLength|
             |0_r1_CONNECTED_BEST_None_prefixLength|)
          a!4)))))))
(assert (= (or |0_r1_BGP_BEST_None_permitted| |0_r1_CONNECTED_BEST_None_permitted|)
   |0_r1_OVERALL_BEST_None_permitted|))
(assert (=> (or |0_r1_BGP_BEST_None_permitted| |0_r1_CONNECTED_BEST_None_permitted|)
    (or (and |0_r1_BGP_BEST_None_permitted|
             (= |0_r1_OVERALL_BEST_None_prefixLength|
                |0_r1_BGP_BEST_None_prefixLength|)
             (= |0_r1_OVERALL_BEST_None_adminDist| 20)
             true
             (= |0_r1_OVERALL_BEST_None_metric| |0_r1_BGP_BEST_None_metric|)
             true
             true
             true
             (= |0_r1_OVERALL_BEST_None_routerID| |0_r1_BGP_BEST_None_routerID|)
             (= |0_r1_OVERALL_BEST_None_history| #b0)
             true
             true
             true
             true)
        (and |0_r1_CONNECTED_BEST_None_permitted|
             (= |0_r1_OVERALL_BEST_None_prefixLength|
                |0_r1_CONNECTED_BEST_None_prefixLength|)
             (= |0_r1_OVERALL_BEST_None_adminDist| 0)
             true
             (= |0_r1_OVERALL_BEST_None_metric| 0)
             true
             true
             true
             true
             (= |0_r1_OVERALL_BEST_None_history| #b1)
             true
             true
             true
             true))))
(assert (=> (and true
         |0_r2_BGP_IMPORT_Serial0_choice|
         (= |0_r2_OVERALL_BEST_None_prefixLength|
            |0_r1_BGP_SINGLE-EXPORT__prefixLength|)
         true
         true
         (= |0_r2_OVERALL_BEST_None_metric| |0_r1_BGP_SINGLE-EXPORT__metric|)
         true
         true
         true
         (= |0_r2_OVERALL_BEST_None_routerID| 707406337)
         true
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_r2_Serial0|))
(assert (not |0_CONTROL-FORWARDING_r2_Loopback0|))
(assert (=> (not (and true
              |0_r2_BGP_IMPORT_Serial0_choice|
              (= |0_r2_OVERALL_BEST_None_prefixLength|
                 |0_r1_BGP_SINGLE-EXPORT__prefixLength|)
              true
              true
              (= |0_r2_OVERALL_BEST_None_metric|
                 |0_r1_BGP_SINGLE-EXPORT__metric|)
              true
              true
              true
              (= |0_r2_OVERALL_BEST_None_routerID| 707406337)
              true
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_r2_Serial0|)))
(assert (=> (and true
         |0_r1_BGP_IMPORT_Serial0_choice|
         (= |0_r1_OVERALL_BEST_None_prefixLength|
            |0_r2_BGP_SINGLE-EXPORT__prefixLength|)
         (= |0_r1_OVERALL_BEST_None_adminDist| 20)
         true
         (= |0_r1_OVERALL_BEST_None_metric| |0_r2_BGP_SINGLE-EXPORT__metric|)
         true
         true
         true
         (= |0_r1_OVERALL_BEST_None_routerID| 1162167553)
         (= |0_r1_OVERALL_BEST_None_history| #b0)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_r1_Serial0|))
(assert (=> (and (not (= |0_dst-ip| #x2a2a2a01))
         |0_r1_CONNECTED_IMPORT_Loopback0_choice|
         (= |0_r1_OVERALL_BEST_None_prefixLength|
            |0_r1_CONNECTED_IMPORT_Loopback0_prefixLength|)
         (= |0_r1_OVERALL_BEST_None_adminDist| 0)
         true
         (= |0_r1_OVERALL_BEST_None_metric| 0)
         true
         true
         true
         (= |0_r1_OVERALL_BEST_None_routerID| 0)
         (= |0_r1_OVERALL_BEST_None_history| #b1)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_r1_Loopback0|))
(assert (=> (not (and true
              |0_r1_BGP_IMPORT_Serial0_choice|
              (= |0_r1_OVERALL_BEST_None_prefixLength|
                 |0_r2_BGP_SINGLE-EXPORT__prefixLength|)
              (= |0_r1_OVERALL_BEST_None_adminDist| 20)
              true
              (= |0_r1_OVERALL_BEST_None_metric|
                 |0_r2_BGP_SINGLE-EXPORT__metric|)
              true
              true
              true
              (= |0_r1_OVERALL_BEST_None_routerID| 1162167553)
              (= |0_r1_OVERALL_BEST_None_history| #b0)
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_r1_Serial0|)))
(assert (let ((a!1 (not (and (not (= |0_dst-ip| #x2a2a2a01))
                     |0_r1_CONNECTED_IMPORT_Loopback0_choice|
                     (= |0_r1_OVERALL_BEST_None_prefixLength|
                        |0_r1_CONNECTED_IMPORT_Loopback0_prefixLength|)
                     (= |0_r1_OVERALL_BEST_None_adminDist| 0)
                     true
                     (= |0_r1_OVERALL_BEST_None_metric| 0)
                     true
                     true
                     true
                     (= |0_r1_OVERALL_BEST_None_routerID| 0)
                     (= |0_r1_OVERALL_BEST_None_history| #b1)
                     true
                     true
                     true
                     true))))
  (=> a!1 (not |0_CONTROL-FORWARDING_r1_Loopback0|))))
(assert (= (and (or false |0_CONTROL-FORWARDING_r2_Loopback0|) true)
   |0_DATA-FORWARDING_r2_Loopback0|))
(assert (= (and (or false |0_CONTROL-FORWARDING_r2_Serial0|) true)
   |0_DATA-FORWARDING_r2_Serial0|))
(assert (= (and (or false |0_CONTROL-FORWARDING_r1_Loopback0|) true)
   |0_DATA-FORWARDING_r1_Loopback0|))
(assert (= (and (or false |0_CONTROL-FORWARDING_r1_Serial0|) true)
   |0_DATA-FORWARDING_r1_Serial0|))
(assert (=> (not |0_r2_OVERALL_BEST_None_permitted|)
    (= |0_r2_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_r2_OVERALL_BEST_None_permitted|)
    (= |0_r2_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_r2_OVERALL_BEST_None_permitted|) true))
(assert (=> (not |0_r2_OVERALL_BEST_None_permitted|)
    (= |0_r2_OVERALL_BEST_None_routerID| 0)))
(assert (=> (not |0_r1_OVERALL_BEST_None_permitted|)
    (= |0_r1_OVERALL_BEST_None_adminDist| 0)))
(assert (=> (not |0_r1_OVERALL_BEST_None_permitted|)
    (= |0_r1_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_r1_OVERALL_BEST_None_permitted|)
    (= |0_r1_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_r1_OVERALL_BEST_None_permitted|)
    (= |0_r1_OVERALL_BEST_None_history| #b0)))
(assert (=> (not |0_r1_OVERALL_BEST_None_permitted|)
    (= |0_r1_OVERALL_BEST_None_routerID| 0)))
(assert (=> (not |0_r1_BGP_BEST_None_permitted|)
    (= |0_r1_BGP_BEST_None_prefixLength| 0)))
(assert (=> (not |0_r1_BGP_BEST_None_permitted|) (= |0_r1_BGP_BEST_None_metric| 0)))
(assert (=> (not |0_r1_BGP_BEST_None_permitted|) (= |0_r1_BGP_BEST_None_routerID| 0)))
(assert (=> (not |0_r1_CONNECTED_BEST_None_permitted|)
    (= |0_r1_CONNECTED_BEST_None_prefixLength| 0)))
(assert (=> (not |0_r2_BGP_SINGLE-EXPORT__permitted|)
    (= |0_r2_BGP_SINGLE-EXPORT__prefixLength| 0)))
(assert (=> (not |0_r2_BGP_SINGLE-EXPORT__permitted|)
    (= |0_r2_BGP_SINGLE-EXPORT__metric| 0)))
(assert (=> (not |0_r1_BGP_SINGLE-EXPORT__permitted|)
    (= |0_r1_BGP_SINGLE-EXPORT__prefixLength| 0)))
(assert (=> (not |0_r1_BGP_SINGLE-EXPORT__permitted|)
    (= |0_r1_BGP_SINGLE-EXPORT__metric| 0)))
(assert (=> (not |0_r1_CONNECTED_IMPORT_Loopback0_permitted|)
    (= |0_r1_CONNECTED_IMPORT_Loopback0_prefixLength| 0)))
(assert (and (= (bvand |0_dst-ip| #xffffff00) (bvand #x2a2a2a00 #xffffff00))))
(assert (= |0__reachable_r2| (> |0__reachable-id_r2| 0)))
(assert (>= |0__reachable-id_r2| 0))
(assert (= |0__reachable_r1| (> |0__reachable-id_r1| 0)))
(assert (>= |0__reachable-id_r1| 0))
(assert (let ((a!1 (and true
                (=> (and |0_DATA-FORWARDING_r2_Serial0|
                         true
                         (> |0__reachable-id_r1| 0))
                    (> |0__reachable-id_r2| |0__reachable-id_r1|)))))
(let ((a!2 (ite (or false
                    (and |0_DATA-FORWARDING_r2_Serial0|
                         true
                         (> |0__reachable-id_r1| 0)))
                a!1
                (= |0__reachable-id_r2| 0))))
  (ite (or false false) (= |0__reachable-id_r2| 1) a!2))))
(assert (let ((a!1 (and true
                (=> (and |0_DATA-FORWARDING_r1_Serial0|
                         true
                         (> |0__reachable-id_r2| 0))
                    (> |0__reachable-id_r1| |0__reachable-id_r2|)))))
(let ((a!2 (ite (or false
                    (and |0_DATA-FORWARDING_r1_Serial0|
                         true
                         (> |0__reachable-id_r2| 0)))
                a!1
                (= |0__reachable-id_r1| 0))))
  (ite (or false
           (and |0_DATA-FORWARDING_r1_Loopback0| true)
           false
           (and |0_r1_CONNECTED_BEST_None_permitted| (= |0_dst-ip| #x2a2a2a01)))
       (= |0__reachable-id_r1| 1)
       a!2))))
(assert (not (and true |0__reachable_r2| |0__reachable_r1|)))

