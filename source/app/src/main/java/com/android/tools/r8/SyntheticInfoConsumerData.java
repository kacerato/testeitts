package com.android.tools.r8;

import com.android.tools.r8.references.ClassReference;

public interface SyntheticInfoConsumerData {
    ClassReference getSynthesizingContextClass();

    ClassReference getSyntheticClass();
}
