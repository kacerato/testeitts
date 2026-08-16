.class public LFk/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/h0;

.field public b:LFk/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFk/e;
    .locals 3

    new-instance v0, LFk/e;

    iget-object v1, p0, LFk/e$a;->b:LFk/g;

    iget-object v2, p0, LFk/e$a;->a:LFk/h0;

    invoke-direct {v0, v1, v2}, LFk/e;-><init>(LFk/g;LFk/h0;)V

    return-object v0
.end method

.method public b(LFk/g;)LFk/e$a;
    .locals 0

    iput-object p1, p0, LFk/e$a;->b:LFk/g;

    return-object p0
.end method

.method public c(LFk/h0;)LFk/e$a;
    .locals 0

    iput-object p1, p0, LFk/e$a;->a:LFk/h0;

    return-object p0
.end method
