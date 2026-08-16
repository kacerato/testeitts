.class public abstract Lcom/android/tools/r8/internal/h8;
.super Lcom/android/tools/r8/internal/m8;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/m8;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/d8;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/d8;-><init>(Lcom/android/tools/r8/internal/h8;)V

    return-object v0
.end method
