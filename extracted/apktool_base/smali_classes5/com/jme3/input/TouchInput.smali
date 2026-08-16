.class public interface abstract Lcom/jme3/input/TouchInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/Input;


# static fields
.field public static final ALL:I = 0x0

.field public static final KEYCODE_BACK:I = 0x4

.field public static final KEYCODE_HOME:I = 0x3

.field public static final KEYCODE_MENU:I = 0x52

.field public static final KEYCODE_SEARCH:I = 0x54

.field public static final KEYCODE_VOLUME_DOWN:I = 0x19

.field public static final KEYCODE_VOLUME_UP:I = 0x18


# virtual methods
.method public abstract isSimulateKeyboard()Z
.end method

.method public abstract isSimulateMouse()Z
.end method

.method public abstract setOmitHistoricEvents(Z)V
.end method

.method public abstract setSimulateKeyboard(Z)V
.end method

.method public abstract setSimulateMouse(Z)V
.end method
