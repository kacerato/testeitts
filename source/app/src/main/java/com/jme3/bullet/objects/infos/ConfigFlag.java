package com.jme3.bullet.objects.infos;

import java.util.ArrayList;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class ConfigFlag {
    public static final int CL_RS = 2;
    public static final int CL_SELF = 64;
    public static final int CL_SS = 32;
    public static final int SDF_MDF = 512;
    public static final int SDF_RD = 4;
    public static final int SDF_RDF = 256;
    public static final int SDF_RDN = 1024;
    public static final int SDF_RS = 1;
    public static final int VF_DD = 128;
    public static final int VF_SS = 16;
    public static final Logger logger = Logger.getLogger(ConfigFlag.class.getName());

    private ConfigFlag() {
    }

    public static String describe(int i10) {
        ArrayList<String> arrayList = new ArrayList(5);
        if ((i10 & 1) != 0) {
            arrayList.add("SDF_RS");
        }
        if ((i10 & 2) != 0) {
            arrayList.add("CL_RS");
        }
        if ((i10 & 4) != 0) {
            arrayList.add("SDF_RD");
        }
        if ((i10 & 16) != 0) {
            arrayList.add("VF_SS");
        }
        if ((i10 & 32) != 0) {
            arrayList.add("CL_SS");
        }
        if ((i10 & 64) != 0) {
            arrayList.add("CL_SELF");
        }
        if ((i10 & 128) != 0) {
            arrayList.add("VF_DD");
        }
        if ((i10 & 256) != 0) {
            arrayList.add("SDF_RDF");
        }
        if ((i10 & 512) != 0) {
            arrayList.add("SDF_MDF");
        }
        if ((i10 & 1024) != 0) {
            arrayList.add("SDF_RDN");
        }
        StringBuilder sb2 = new StringBuilder(60);
        boolean z10 = false;
        for (String str : arrayList) {
            if (z10) {
                sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            } else {
                z10 = true;
            }
            sb2.append(str);
        }
        return sb2.toString();
    }
}
