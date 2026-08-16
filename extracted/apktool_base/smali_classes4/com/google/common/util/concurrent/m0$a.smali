.class public abstract Lcom/google/common/util/concurrent/m0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/util/concurrent/m0$a;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/m0$a$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/m0$a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c(J)V
.end method
