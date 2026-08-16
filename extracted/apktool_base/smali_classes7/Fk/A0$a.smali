.class public LFk/A0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/A0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/p0;

.field public b:LFk/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFk/A0;
    .locals 3

    new-instance v0, LFk/A0;

    iget-object v1, p0, LFk/A0$a;->a:LFk/p0;

    iget-object v2, p0, LFk/A0$a;->b:LFk/i;

    invoke-direct {v0, v1, v2}, LFk/A0;-><init>(LFk/p0;LFk/i;)V

    return-object v0
.end method

.method public b(LFk/i;)LFk/A0$a;
    .locals 0

    iput-object p1, p0, LFk/A0$a;->b:LFk/i;

    return-object p0
.end method

.method public c(LFk/p0;)LFk/A0$a;
    .locals 0

    iput-object p1, p0, LFk/A0$a;->a:LFk/p0;

    return-object p0
.end method
