package com.tonyodev.fetch2.helper;

import com.tonyodev.fetch2.NetworkType;
import java.io.Closeable;
import java.util.List;
import org.jetbrains.annotations.NotNull;

public interface PriorityListProcessor<T> extends Closeable {
    int getDownloadConcurrentLimit();

    @NotNull
    NetworkType getGlobalNetworkType();

    @NotNull
    List<T> getPriorityList();

    boolean isPaused();

    boolean isStopped();

    void pause();

    void resetBackOffTime();

    void resume();

    void sendBackOffResetSignal();

    void setDownloadConcurrentLimit(int i10);

    void setGlobalNetworkType(@NotNull NetworkType networkType);

    void start();

    void stop();
}
