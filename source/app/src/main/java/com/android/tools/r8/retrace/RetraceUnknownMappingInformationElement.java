package com.android.tools.r8.retrace;

public interface RetraceUnknownMappingInformationElement {
    String getIdentifier();

    String getPayLoad();

    RetraceUnknownJsonMappingInformationResult getRetraceResultContext();
}
