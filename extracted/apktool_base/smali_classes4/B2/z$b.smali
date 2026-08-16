.class public LB2/z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/Q<",
        "LB2/y;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LB2/y;
    .locals 2

    new-instance v0, LB2/z$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LB2/z$c;-><init>(LB2/z$a;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LB2/z$b;->a()LB2/y;

    move-result-object v0

    return-object v0
.end method
