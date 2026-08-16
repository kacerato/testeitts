.class public LVj/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZi/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVj/a;->g(Z)Ljava/security/SecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)LZi/d;
    .locals 2

    new-instance v0, LVj/a$i;

    invoke-static {}, LVj/a;->c()LVj/b;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LVj/a$i;-><init>(LVj/b;I)V

    return-object v0
.end method
