package cn.pedant.SweetAlert;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.BatteryManager;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class OptAnimationLoader {
    private static Animation createAnimationFromXml(Context context, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        return createAnimationFromXml(context, xmlPullParser, null, Xml.asAttributeSet(xmlPullParser));
    }

    public static Animation loadAnimation(Context context, int i10) throws Resources.NotFoundException {
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                xmlResourceParser = context.getResources().getAnimation(i10);
                return createAnimationFromXml(context, xmlResourceParser);
            } catch (IOException e10) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i10));
                notFoundException.initCause(e10);
                throw notFoundException;
            } catch (XmlPullParserException e11) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i10));
                notFoundException2.initCause(e11);
                throw notFoundException2;
            }
        } finally {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005f, code lost:
    
        switch(r5) {
            case 0: goto L43;
            case 1: goto L42;
            case 2: goto L41;
            case 3: goto L40;
            case 4: goto L39;
            default: goto L47;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a5, code lost:
    
        r4 = new android.view.animation.TranslateAnimation(r7, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c5, code lost:
    
        if (r9 == null) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c7, code lost:
    
        r9.addAnimation(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ab, code lost:
    
        r4 = new android.view.animation.ScaleAnimation(r7, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b1, code lost:
    
        r4 = new android.view.animation.AlphaAnimation(r7, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b7, code lost:
    
        r4 = new android.view.animation.AnimationSet(r7, r10);
        createAnimationFromXml(r7, r8, r4, r10);
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c0, code lost:
    
        r4 = new android.view.animation.RotateAnimation(r7, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0062, code lost:
    
        r4 = (android.view.animation.Animation) java.lang.Class.forName(r4).getConstructor(android.content.Context.class, android.util.AttributeSet.class).newInstance(r7, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x007d, code lost:
    
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a4, code lost:
    
        throw new java.lang.RuntimeException("Unknown animation name: " + r8.getName() + " error:" + r7.getMessage());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Animation createAnimationFromXml(Context context, XmlPullParser xmlPullParser, AnimationSet animationSet, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        Animation animation = null;
        while (true) {
            int next = xmlPullParser.next();
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    String name = xmlPullParser.getName();
                    name.hashCode();
                    char c10 = '\uffff';
                    switch (name.hashCode()) {
                        case -925180581:
                            if (name.equals("rotate")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case 113762:
                            if (name.equals("set")) {
                                c10 = 1;
                                break;
                            }
                            break;
                        case 92909918:
                            if (name.equals("alpha")) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case 109250890:
                            if (name.equals(BatteryManager.EXTRA_SCALE)) {
                                c10 = 3;
                                break;
                            }
                            break;
                        case 1052832078:
                            if (name.equals("translate")) {
                                c10 = 4;
                                break;
                            }
                            break;
                    }
                }
            }
        }
        return animation;
    }
}
