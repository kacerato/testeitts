.class public LFk/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/g;

.field public b:LFk/f0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFk/f;
    .locals 3

    new-instance v0, LFk/f;

    iget-object v1, p0, LFk/f$a;->a:LFk/g;

    iget-object v2, p0, LFk/f$a;->b:LFk/f0;

    invoke-direct {v0, v1, v2}, LFk/f;-><init>(LFk/g;LFk/f0;)V

    return-object v0
.end method

.method public b(LFk/g;)LFk/f$a;
    .locals 0

    iput-object p1, p0, LFk/f$a;->a:LFk/g;

    return-object p0
.end method

.method public c(LFk/f0;)LFk/f$a;
    .locals 0

    iput-object p1, p0, LFk/f$a;->b:LFk/f0;

    return-object p0
.end method
