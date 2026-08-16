package com.android.tools.r8;

public interface SyntheticInfoConsumer {
    void acceptSyntheticInfo(SyntheticInfoConsumerData syntheticInfoConsumerData);

    void finished();
}
