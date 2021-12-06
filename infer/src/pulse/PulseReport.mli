(*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)

open! IStd
open PulseDomainInterface

val report_result :
  Tenv.t -> Procdesc.t -> Errlog.t -> AbductiveDomain.t AccessResult.t -> ExecutionDomain.t list

val report_summary_error :
     Tenv.t
  -> Procdesc.t
  -> Errlog.t
  -> AbductiveDomain.summary AccessResult.error
  -> _ ExecutionDomain.base_t

val report_results :
     Tenv.t
  -> Procdesc.t
  -> Errlog.t
  -> AbductiveDomain.t AccessResult.t list
  -> ExecutionDomain.t list

val report_exec_results :
     Tenv.t
  -> Procdesc.t
  -> Errlog.t
  -> ExecutionDomain.t AccessResult.t list
  -> ExecutionDomain.t list