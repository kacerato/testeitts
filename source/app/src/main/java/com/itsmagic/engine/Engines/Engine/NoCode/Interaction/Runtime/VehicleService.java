package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/** Sessao de entrada/saida de veiculo e ocupacao de assentos. Nao implementa drivetrain. */
public final class VehicleService {

    public static class VehicleSession {
        GameObject interactor;
        GameObject vehicle;
        GameObject seat;
        final Vector3 entryOrigin = new Vector3();
    }

    private static final Map<GameObject, VehicleSession> SESSIONS = new ConcurrentHashMap<>();

    private VehicleService() {}

    public static InteractionResult enter(GameObject interactor, GameObject vehicle, GameObject seat) {
        if (!C13317e.J(interactor) || !C13317e.J(vehicle) || !C13317e.J(seat)
            || interactor.J0() == null || seat.J0() == null || seat.J0().J0() == null) {
            return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget, "Veiculo ou assento invalido");
        }

        Object occupant = InteractionRegistry.getAttribute(seat, "occupied_by");
        if (occupant instanceof GameObject && C13317e.J((GameObject) occupant) && occupant != interactor) {
            return InteractionResult.failure(InteractionResult.FailureReason.Occupied, "Assento ocupado");
        }
        if (InteractionRegistry.isLocked(vehicle)) {
            return InteractionResult.failure(InteractionResult.FailureReason.Locked, "Veiculo trancado");
        }

        // Entrar em outro veiculo finaliza a sessao anterior; trocar assento usa switchSeat().
        if (SESSIONS.containsKey(interactor)) exit(interactor, null);

        VehicleSession session = new VehicleSession();
        session.interactor = interactor;
        session.vehicle = vehicle;
        session.seat = seat;
        Vector3 origin = interactor.J0().J0();
        if (origin != null) session.entryOrigin.set(origin);

        Vector3 seatPos = seat.J0().J0();
        interactor.J0().f79337l.f(new Vector3(seatPos));
        SESSIONS.put(interactor, session);

        InteractionRegistry.setAttribute(seat, "occupied_by", interactor);
        InteractionRegistry.setAttribute(interactor, "current_vehicle", vehicle);
        InteractionRegistry.setAttribute(interactor, "current_vehicle_seat", seat);
        InteractionRegistry.setAttribute(vehicle, "vehicle_occupant", interactor);
        InteractionDispatcher.dispatchCustomEvent("vehicle_entered", vehicle, interactor);
        InteractionDispatcher.dispatchCustomEvent("vehicle_seat_entered", seat, interactor);
        return InteractionResult.success(vehicle);
    }

    public static InteractionResult switchSeat(GameObject interactor, GameObject newSeat) {
        VehicleSession session = SESSIONS.get(interactor);
        if (session == null || !C13317e.J(session.vehicle) || !C13317e.J(newSeat)
            || newSeat.J0() == null || newSeat.J0().J0() == null || interactor.J0() == null) {
            return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget, "Assento invalido ou interactor fora do veiculo");
        }

        Object occupant = InteractionRegistry.getAttribute(newSeat, "occupied_by");
        if (occupant instanceof GameObject && C13317e.J((GameObject) occupant) && occupant != interactor) {
            return InteractionResult.failure(InteractionResult.FailureReason.Occupied, "Assento ocupado");
        }

        GameObject oldSeat = session.seat;
        if (C13317e.J(oldSeat)) InteractionRegistry.setAttribute(oldSeat, "occupied_by", null);

        session.seat = newSeat;
        InteractionRegistry.setAttribute(newSeat, "occupied_by", interactor);
        InteractionRegistry.setAttribute(interactor, "current_vehicle_seat", newSeat);
        interactor.J0().f79337l.f(new Vector3(newSeat.J0().J0()));
        InteractionDispatcher.dispatchCustomEvent("vehicle_seat_exited", oldSeat, interactor);
        InteractionDispatcher.dispatchCustomEvent("vehicle_seat_switched", session.vehicle, newSeat);
        InteractionDispatcher.dispatchCustomEvent("vehicle_seat_entered", newSeat, interactor);
        return InteractionResult.success(newSeat);
    }

    public static InteractionResult exit(GameObject interactor, GameObject exitPoint) {
        if (interactor == null) return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget);
        VehicleSession session = SESSIONS.remove(interactor);
        if (session == null) return InteractionResult.success(interactor);

        if (C13317e.J(session.seat)) InteractionRegistry.setAttribute(session.seat, "occupied_by", null);
        if (C13317e.J(session.vehicle)) InteractionRegistry.setAttribute(session.vehicle, "vehicle_occupant", null);

        if (interactor.J0() != null) {
            Vector3 destination = null;
            if (C13317e.J(exitPoint) && exitPoint.J0() != null) destination = exitPoint.J0().J0();
            if (destination != null) interactor.J0().f79337l.f(new Vector3(destination));
            else interactor.J0().f79337l.f(new Vector3(session.entryOrigin));
        }

        InteractionRegistry.setAttribute(interactor, "current_vehicle", null);
        InteractionRegistry.setAttribute(interactor, "current_vehicle_seat", null);
        InteractionDispatcher.dispatchCustomEvent("vehicle_seat_exited", session.seat, interactor);
        InteractionDispatcher.dispatchCustomEvent("vehicle_exited", session.vehicle, interactor);
        return InteractionResult.success(interactor);
    }

    public static InteractionResult setEngine(GameObject vehicle, boolean running) {
        if (!C13317e.J(vehicle)) return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget);
        if (running && InteractionRegistry.isLocked(vehicle)) {
            return InteractionResult.failure(InteractionResult.FailureReason.Locked, "Veiculo trancado");
        }
        if (running && Boolean.TRUE.equals(InteractionRegistry.getAttribute(vehicle, "engine_requires_power")) && !InteractionRegistry.isPowered(vehicle)) {
            return InteractionResult.failure(InteractionResult.FailureReason.Disabled, "Veiculo sem energia");
        }
        InteractionRegistry.setAttribute(vehicle, "engine_running", Boolean.valueOf(running));
        InteractionDispatcher.dispatchCustomEvent(running ? "vehicle_engine_started" : "vehicle_engine_stopped", vehicle, null);
        return InteractionResult.success(vehicle);
    }

    public static boolean isInside(GameObject interactor) { return interactor != null && SESSIONS.containsKey(interactor); }
    public static GameObject getVehicle(GameObject interactor) { VehicleSession s=SESSIONS.get(interactor); return s!=null?s.vehicle:null; }
    public static GameObject getSeat(GameObject interactor) { VehicleSession s=SESSIONS.get(interactor); return s!=null?s.seat:null; }
}
