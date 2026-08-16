package com.itsmagic.engine.Activities.Editor.Utils;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.DragEvent;
import android.view.View;

public class z {

    public static final Rect f72359a = new Rect();

    public static Point a(View item, DragEvent event) {
        Rect rect = f72359a;
        item.getGlobalVisibleRect(rect);
        return new Point(rect.left + Math.round(event.getX()), rect.top + Math.round(event.getY()));
    }

    public static boolean b(Point touchPosition, Rect rScroll) {
        int i10;
        int i11 = touchPosition.f32423x;
        return i11 > rScroll.left && i11 < rScroll.right && (i10 = touchPosition.f32424y) > rScroll.top && i10 < rScroll.bottom;
    }

    public static boolean c(View view, Point touchPosition) {
        if (view == null) {
            return false;
        }
        Rect rect = f72359a;
        view.getGlobalVisibleRect(rect);
        return b(touchPosition, rect);
    }
}
