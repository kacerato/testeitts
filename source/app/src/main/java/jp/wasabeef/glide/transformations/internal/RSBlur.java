package jp.wasabeef.glide.transformations.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RSRuntimeException;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;

public class RSBlur {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap blur(Context context, Bitmap bitmap, int radius) throws RSRuntimeException {
        Allocation allocation;
        Allocation allocation2;
        Allocation allocation3;
        RenderScript create;
        ScriptIntrinsicBlur scriptIntrinsicBlur = null;
        try {
            create = RenderScript.create(context);
            try {
                create.setMessageHandler(new RenderScript.RSMessageHandler());
                allocation2 = Allocation.createFromBitmap(create, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
                try {
                    allocation3 = Allocation.createTyped(create, allocation2.getType());
                } catch (Throwable th2) {
                    th = th2;
                    allocation3 = null;
                    scriptIntrinsicBlur = create;
                    allocation = allocation3;
                    if (scriptIntrinsicBlur != null) {
                        RenderScript.releaseAllContexts();
                    }
                    if (allocation2 != null) {
                        allocation2.destroy();
                    }
                    if (allocation3 != null) {
                        allocation3.destroy();
                    }
                    if (allocation != null) {
                        allocation.destroy();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                allocation2 = null;
                allocation3 = null;
            }
        } catch (Throwable th4) {
            th = th4;
            allocation = null;
            allocation2 = null;
            allocation3 = null;
        }
        try {
            scriptIntrinsicBlur = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
            scriptIntrinsicBlur.setInput(allocation2);
            scriptIntrinsicBlur.setRadius(radius);
            scriptIntrinsicBlur.forEach(allocation3);
            allocation3.copyTo(bitmap);
            RenderScript.releaseAllContexts();
            allocation2.destroy();
            allocation3.destroy();
            scriptIntrinsicBlur.destroy();
            return bitmap;
        } catch (Throwable th5) {
            th = th5;
            Allocation allocation4 = scriptIntrinsicBlur;
            scriptIntrinsicBlur = create;
            allocation = allocation4;
            if (scriptIntrinsicBlur != null) {
            }
            if (allocation2 != null) {
            }
            if (allocation3 != null) {
            }
            if (allocation != null) {
            }
            throw th;
        }
    }
}
