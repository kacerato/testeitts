package org.openjdk.tools.sjavac.server;

import java.io.Serializable;

public class SysInfo implements Serializable {
    static final long serialVersionUID = -3096346807579L;
    public long maxMemory;
    public int numCores;

    public SysInfo(int i10, long j10) {
        this.numCores = i10;
        this.maxMemory = j10;
    }
}
