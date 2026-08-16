package i1;

import android.util.JsonReader;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class Z {

    @Nullable
    public String f91276a;

    @Nullable
    public String f91277b;

    @Nullable
    public String f91278c;

    public int f91281f = 1;

    public List<String> f91279d = Collections.emptyList();

    public List<Y> f91280e = Collections.emptyList();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x01c4, code lost:
    
        switch(r3) {
            case 0: goto L136;
            case 1: goto L135;
            case 2: goto L134;
            case 3: goto L133;
            case 4: goto L137;
            case 5: goto L132;
            case 6: goto L131;
            case 7: goto L130;
            default: goto L153;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x01df, code lost:
    
        r5 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x01e2, code lost:
    
        r5 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x01e4, code lost:
    
        r5 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x01e6, code lost:
    
        r5 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01e8, code lost:
    
        r5 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x01ea, code lost:
    
        r5 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x01ec, code lost:
    
        r5 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01ed, code lost:
    
        r0.f91281f = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01cf, code lost:
    
        if (r1.length() == 0) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01d1, code lost:
    
        r0 = "Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.ConsentSignalfrom: ".concat(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01de, code lost:
    
        throw new java.io.IOException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01d6, code lost:
    
        r0 = new java.lang.String("Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.ConsentSignalfrom: ");
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Z a(JsonReader jsonReader) throws IOException {
        char c10;
        boolean z10;
        char c11;
        int i10;
        Z z11 = new Z();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c12 = '\uffff';
            int i11 = 5;
            switch (nextName.hashCode()) {
                case -2001388947:
                    if (nextName.equals("consent_signal")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1938755376:
                    if (nextName.equals("error_message")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -1851537225:
                    if (nextName.equals("consent_form_base_url")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -1161803523:
                    if (nextName.equals("actions")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case -986806987:
                    if (nextName.equals("request_info_keys")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case -790907624:
                    if (nextName.equals("consent_form_payload")) {
                        c10 = 1;
                        break;
                    }
                    break;
            }
            c10 = '\uffff';
            if (c10 == 0) {
                String nextString = jsonReader.nextString();
                switch (nextString.hashCode()) {
                    case -2058725357:
                        if (nextString.equals("CONSENT_SIGNAL_COLLECT_CONSENT")) {
                            c12 = 4;
                            break;
                        }
                        break;
                    case -1969035850:
                        if (nextString.equals("CONSENT_SIGNAL_ERROR")) {
                            c12 = 6;
                            break;
                        }
                        break;
                    case -1263695752:
                        if (nextString.equals("CONSENT_SIGNAL_UNKNOWN")) {
                            c12 = 0;
                            break;
                        }
                        break;
                    case -954325659:
                        if (nextString.equals("CONSENT_SIGNAL_NON_PERSONALIZED_ADS")) {
                            c12 = 2;
                            break;
                        }
                        break;
                    case -918677260:
                        if (nextString.equals("CONSENT_SIGNAL_PUBLISHER_MISCONFIGURATION")) {
                            c12 = 7;
                            break;
                        }
                        break;
                    case 429411856:
                        if (nextString.equals("CONSENT_SIGNAL_SUFFICIENT")) {
                            c12 = 3;
                            break;
                        }
                        break;
                    case 467888915:
                        if (nextString.equals("CONSENT_SIGNAL_PERSONALIZED_ADS")) {
                            c12 = 1;
                            break;
                        }
                        break;
                    case 1725474845:
                        if (nextString.equals("CONSENT_SIGNAL_NOT_REQUIRED")) {
                            c12 = 5;
                            break;
                        }
                        break;
                }
            } else if (c10 == 1) {
                z11.f91276a = jsonReader.nextString();
            } else if (c10 == 2) {
                z11.f91277b = jsonReader.nextString();
            } else if (c10 == 3) {
                z11.f91278c = jsonReader.nextString();
            } else if (c10 == 4) {
                z11.f91279d = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    z11.f91279d.add(jsonReader.nextString());
                }
                jsonReader.endArray();
            } else if (c10 != 5) {
                jsonReader.skipValue();
            } else {
                z11.f91280e = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    Y y10 = new Y();
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        int hashCode = nextName2.hashCode();
                        if (hashCode != -2105551094) {
                            if (hashCode == 1583758243 && nextName2.equals("action_type")) {
                                z10 = false;
                            }
                            z10 = -1;
                        } else {
                            if (nextName2.equals("args_json")) {
                                z10 = true;
                            }
                            z10 = -1;
                        }
                        if (!z10) {
                            String nextString2 = jsonReader.nextString();
                            int hashCode2 = nextString2.hashCode();
                            if (hashCode2 == 64208429) {
                                if (nextString2.equals("CLEAR")) {
                                    c11 = 2;
                                    if (c11 != 0) {
                                    }
                                    y10.f91275b = i10;
                                }
                                c11 = '\uffff';
                                if (c11 != 0) {
                                }
                                y10.f91275b = i10;
                            } else if (hashCode2 != 82862015) {
                                if (hashCode2 == 1856333582 && nextString2.equals("UNKNOWN_ACTION_TYPE")) {
                                    c11 = 0;
                                    if (c11 != 0) {
                                        i10 = 1;
                                    } else if (c11 == 1) {
                                        i10 = 2;
                                    } else {
                                        if (c11 != 2) {
                                            throw new IOException(nextString2.length() != 0 ? "Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.Action.ActionTypefrom: ".concat(nextString2) : new String("Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.Action.ActionTypefrom: "));
                                        }
                                        i10 = 3;
                                    }
                                    y10.f91275b = i10;
                                }
                                c11 = '\uffff';
                                if (c11 != 0) {
                                }
                                y10.f91275b = i10;
                            } else {
                                if (nextString2.equals("WRITE")) {
                                    c11 = 1;
                                    if (c11 != 0) {
                                    }
                                    y10.f91275b = i10;
                                }
                                c11 = '\uffff';
                                if (c11 != 0) {
                                }
                                y10.f91275b = i10;
                            }
                        } else if (!z10) {
                            jsonReader.skipValue();
                        } else {
                            y10.f91274a = jsonReader.nextString();
                        }
                    }
                    jsonReader.endObject();
                    z11.f91280e.add(y10);
                }
                jsonReader.endArray();
            }
        }
        jsonReader.endObject();
        return z11;
    }
}
