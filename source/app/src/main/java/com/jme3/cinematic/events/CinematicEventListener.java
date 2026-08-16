package com.jme3.cinematic.events;

public interface CinematicEventListener {
    void onPause(CinematicEvent cinematicEvent);

    void onPlay(CinematicEvent cinematicEvent);

    void onStop(CinematicEvent cinematicEvent);
}
