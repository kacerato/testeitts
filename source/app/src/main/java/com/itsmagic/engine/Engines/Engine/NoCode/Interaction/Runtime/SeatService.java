package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/** Ocupacao generica de assentos independente de veiculo. */
public final class SeatService {

    public static class SeatSession {
        GameObject interactor;
        GameObject seat;
        final Vector3 origin = new Vector3();
    }

    private static final Map<GameObject, SeatSession> SESSIONS = new ConcurrentHashMap<>();

    private SeatService() {}

    public static InteractionResult sit(GameObject interactor, GameObject seat) {
        if (!C13317e.J(interactor) || !C13317e.J(seat) || interactor.J0() == null || seat.J0() == null || seat.J0().J0() == null) {
            return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget, "Assento invalido");
        }
        Object occupant = InteractionRegistry.getAttribute(seat, "occupied_by");
        if (occupant instanceof GameObject && C13317e.J((GameObject) occupant) && occupant != interactor) {
            return InteractionResult.failure(InteractionResult.FailureReason.Occupied, "Assento ocupado");
        }

        stand(interactor, null);
        SeatSession session = new SeatSession();
        session.interactor = interactor;
        session.seat = seat;
        Vector3 origin = interactor.J0().J0();
        if (origin != null) session.origin.set(origin);

        interactor.J0().f79337l.f(new Vector3(seat.J0().J0()));
        SESSIONS.put(interactor, session);
        InteractionRegistry.setAttribute(seat, "occupied_by", interactor);
        InteractionRegistry.setAttribute(interactor, "current_seat", seat);
        InteractionDispatcher.dispatchCustomEvent("seat_occupied", seat, interactor);
        return InteractionResult.success(seat);
    }

    public static InteractionResult stand(GameObject interactor, GameObject exitPoint) {
        if (interactor == null) return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget);
        SeatSession session = SESSIONS.remove(interactor);
        if (session == null) return InteractionResult.success(interactor);

        if (C13317e.J(session.seat)) InteractionRegistry.setAttribute(session.seat, "occupied_by", null);
        if (interactor.J0() != null) {
            Vector3 destination = C13317e.J(exitPoint) && exitPoint.J0() != null ? exitPoint.J0().J0() : null;
            if (destination != null) interactor.J0().f79337l.f(new Vector3(destination));
            else interactor.J0().f79337l.f(new Vector3(session.origin));
        }
        InteractionRegistry.setAttribute(interactor, "current_seat", null);
        InteractionDispatcher.dispatchCustomEvent("seat_vacated", session.seat, interactor);
        return InteractionResult.success(session.seat);
    }

    public static boolean isSeated(GameObject interactor) {
        return interactor != null && SESSIONS.containsKey(interactor);
    }
}
