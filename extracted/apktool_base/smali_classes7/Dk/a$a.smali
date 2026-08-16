.class public LDk/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LDk/e;

.field public b:Loh/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LDk/a;
    .locals 3

    new-instance v0, LDk/a;

    iget-object v1, p0, LDk/a$a;->a:LDk/e;

    iget-object v2, p0, LDk/a$a;->b:Loh/g;

    invoke-direct {v0, v1, v2}, LDk/a;-><init>(LDk/e;Loh/g;)V

    return-object v0
.end method

.method public b(Loh/g;)LDk/a$a;
    .locals 0

    iput-object p1, p0, LDk/a$a;->b:Loh/g;

    return-object p0
.end method

.method public c(LDk/b;)LDk/a$a;
    .locals 1

    sget-object v0, LDk/f;->d:LDk/e;

    iput-object v0, p0, LDk/a$a;->a:LDk/e;

    iput-object p1, p0, LDk/a$a;->b:Loh/g;

    return-object p0
.end method

.method public d(LDk/d;)LDk/a$a;
    .locals 1

    sget-object v0, LDk/f;->e:LDk/e;

    iput-object v0, p0, LDk/a$a;->a:LDk/e;

    iput-object p1, p0, LDk/a$a;->b:Loh/g;

    return-object p0
.end method

.method public e(LDk/e;)LDk/a$a;
    .locals 0

    iput-object p1, p0, LDk/a$a;->a:LDk/e;

    return-object p0
.end method
