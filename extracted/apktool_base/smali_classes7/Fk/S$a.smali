.class public LFk/S$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/m0;

.field public b:LFk/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFk/S;
    .locals 3

    new-instance v0, LFk/S;

    iget-object v1, p0, LFk/S$a;->a:LFk/m0;

    iget-object v2, p0, LFk/S$a;->b:LFk/a;

    invoke-direct {v0, v1, v2}, LFk/S;-><init>(LFk/m0;LFk/a;)V

    return-object v0
.end method

.method public b(LFk/a;)LFk/S$a;
    .locals 0

    iput-object p1, p0, LFk/S$a;->b:LFk/a;

    return-object p0
.end method

.method public c(LFk/m0;)LFk/S$a;
    .locals 0

    iput-object p1, p0, LFk/S$a;->a:LFk/m0;

    return-object p0
.end method
