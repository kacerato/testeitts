.class public LFk/r0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/F;

.field public b:LFk/I;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFk/r0;
    .locals 3

    new-instance v0, LFk/r0;

    iget-object v1, p0, LFk/r0$a;->a:LFk/F;

    iget-object v2, p0, LFk/r0$a;->b:LFk/I;

    invoke-direct {v0, v1, v2}, LFk/r0;-><init>(LFk/F;LFk/I;)V

    return-object v0
.end method

.method public b(LFk/F;)LFk/r0$a;
    .locals 0

    iput-object p1, p0, LFk/r0$a;->a:LFk/F;

    return-object p0
.end method

.method public c(LFk/I;)LFk/r0$a;
    .locals 0

    iput-object p1, p0, LFk/r0$a;->b:LFk/I;

    return-object p0
.end method
