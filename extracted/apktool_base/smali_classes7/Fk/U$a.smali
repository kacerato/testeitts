.class public LFk/U$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/r0;

.field public b:LFk/r0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFk/U;
    .locals 3

    new-instance v0, LFk/U;

    iget-object v1, p0, LFk/U$a;->a:LFk/r0;

    iget-object v2, p0, LFk/U$a;->b:LFk/r0;

    invoke-direct {v0, v1, v2}, LFk/U;-><init>(LFk/r0;LFk/r0;)V

    return-object v0
.end method

.method public b(LFk/r0;)LFk/U$a;
    .locals 0

    iput-object p1, p0, LFk/U$a;->a:LFk/r0;

    return-object p0
.end method

.method public c(LFk/r0;)LFk/U$a;
    .locals 0

    iput-object p1, p0, LFk/U$a;->b:LFk/r0;

    return-object p0
.end method
