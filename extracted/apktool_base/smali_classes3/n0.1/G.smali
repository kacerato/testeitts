.class public final Ln0/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln0/G;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln0/G;

    invoke-direct {v0}, Ln0/G;-><init>()V

    sput-object v0, Ln0/G;->a:Ln0/G;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 1
    .annotation runtime LLf/o;
    .end annotation

    invoke-static {}, Lcom/google/android/filament/j;->a()V

    const-string v0, "filament-utils-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
