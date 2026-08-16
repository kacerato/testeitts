.class public Ldl/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ldl/g;

.field public b:Ldl/p;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldl/g;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ldl/g;-><init>(D)V

    iput-object v0, p0, Ldl/w;->a:Ldl/g;

    new-instance v0, Ldl/p;

    invoke-direct {v0}, Ldl/p;-><init>()V

    iput-object v0, p0, Ldl/w;->b:Ldl/p;

    return-void
.end method
