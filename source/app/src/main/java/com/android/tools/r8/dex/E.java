package com.android.tools.r8.dex;

import androidx.fragment.app.FragmentTransaction;
import com.jme3.audio.openal.AL;
import eg.C13099L;

public class E {

    public static final boolean f35683e = true;

    public final int f35684a;

    public final int f35685b;

    public final int f35686c;

    public int f35687d;

    public E(int i10, int i11, int i12, int i13) {
        this.f35684a = i10;
        if (!f35683e && i11 != 0) {
            throw new AssertionError();
        }
        this.f35685b = i12;
        this.f35686c = i13;
        this.f35687d = -1;
    }

    public static int[] a() {
        return new int[]{FragmentTransaction.TRANSIT_FRAGMENT_MATCH_ACTIVITY_CLOSE, 0, AL.AL_CHANNELS, 4, 4098, 1, 4096, 3, 5, 2, 8194, 8192, 4097, 8198, 8196, 4099, 6, AL.AL_FREQUENCY};
    }

    public final String toString() {
        return a(this.f35684a) + C13099L.f85621a + this.f35686c + " " + this.f35685b;
    }

    public static String a(int i10) {
        switch (i10) {
            case 0:
                return "Header";
            case 1:
                return "Strings";
            case 2:
                return "Types";
            case 3:
                return "Protos";
            case 4:
                return "Fields";
            case 5:
                return "Methods";
            case 6:
                return "ClassDefs";
            default:
                switch (i10) {
                    case 4096:
                        return "Maps";
                    case 4097:
                        return "TypeLists";
                    case 4098:
                        return "AnnotationSetRefs";
                    case 4099:
                        return "AnnotationSets";
                    default:
                        switch (i10) {
                            case 8192:
                                return "ClassData";
                            case AL.AL_FREQUENCY:
                                return "Code";
                            case 8194:
                                return "StringData";
                            case AL.AL_CHANNELS:
                                return "DebugInfo";
                            case 8196:
                                return "Annotation";
                            case FragmentTransaction.TRANSIT_FRAGMENT_MATCH_ACTIVITY_CLOSE:
                                return "EncodedArrays";
                            case 8198:
                                return "AnnotationsDirectory";
                            default:
                                return "Unknown";
                        }
                }
        }
    }
}
