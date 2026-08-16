.class public LDk/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/x;

.field public b:LFk/p0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LDk/b;
    .locals 3

    new-instance v0, LDk/b;

    iget-object v1, p0, LDk/b$a;->a:LFk/x;

    iget-object v2, p0, LDk/b$a;->b:LFk/p0;

    invoke-direct {v0, v1, v2}, LDk/b;-><init>(LFk/x;LFk/p0;)V

    return-object v0
.end method

.method public b(LFk/x;)LDk/b$a;
    .locals 0

    iput-object p1, p0, LDk/b$a;->a:LFk/x;

    return-object p0
.end method

.method public c(LFk/p0;)LDk/b$a;
    .locals 0

    iput-object p1, p0, LDk/b$a;->b:LFk/p0;

    return-object p0
.end method
