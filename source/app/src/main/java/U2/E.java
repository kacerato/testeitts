package U2;

import java.util.concurrent.Executor;

public interface E extends Executor {
    boolean isPaused();

    void pause();

    void resume();
}
