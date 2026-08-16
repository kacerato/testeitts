.class public final LOe/S0$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOe/S0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/S0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOe/S0$b<",
        "Ljava/lang/Object;",
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
.method public call()LOe/S0$h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOe/S0$h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, LOe/S0$p;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LOe/S0$p;-><init>(I)V

    return-object v0
.end method
