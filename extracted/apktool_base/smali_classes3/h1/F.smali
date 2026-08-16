.class public abstract Lh1/F;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/jspecify/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(C)Lh1/F;
    .locals 1

    new-instance v0, Lh1/C;

    invoke-direct {v0, p0}, Lh1/C;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public abstract a(C)Z
.end method
