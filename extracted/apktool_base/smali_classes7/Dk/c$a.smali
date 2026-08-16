.class public LDk/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/x;

.field public b:Loh/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LDk/c;
    .locals 3

    new-instance v0, LDk/c;

    iget-object v1, p0, LDk/c$a;->a:LFk/x;

    iget-object v2, p0, LDk/c$a;->b:Loh/s;

    invoke-direct {v0, v1, v2}, LDk/c;-><init>(LFk/x;Loh/s;)V

    return-object v0
.end method

.method public b()LDk/d;
    .locals 3

    new-instance v0, LDk/d;

    iget-object v1, p0, LDk/c$a;->a:LFk/x;

    iget-object v2, p0, LDk/c$a;->b:Loh/s;

    invoke-direct {v0, v1, v2}, LDk/d;-><init>(LFk/x;Loh/s;)V

    return-object v0
.end method

.method public c(LFk/x;)LDk/c$a;
    .locals 0

    iput-object p1, p0, LDk/c$a;->a:LFk/x;

    return-object p0
.end method

.method public d(Loh/s;)LDk/c$a;
    .locals 0

    iput-object p1, p0, LDk/c$a;->b:Loh/s;

    return-object p0
.end method
