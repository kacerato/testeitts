package com.google.android.material.timepicker;

import android.content.Context;
import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

public class a extends AccessibilityDelegateCompat {

    public final AccessibilityNodeInfoCompat.AccessibilityActionCompat f65247a;

    public a(Context context, int i10) {
        this.f65247a = new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, context.getString(i10));
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.addAction(this.f65247a);
    }
}
