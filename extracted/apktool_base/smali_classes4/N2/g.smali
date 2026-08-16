.class public final LN2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN2/a;


# instance fields
.field public final a:LM2/a$b;

.field public final b:Ln1/a;

.field public final c:LN2/f;


# direct methods
.method public constructor <init>(Ln1/a;LM2/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LN2/g;->a:LM2/a$b;

    iput-object p1, p0, LN2/g;->b:Ln1/a;

    new-instance p2, LN2/f;

    invoke-direct {p2, p0}, LN2/f;-><init>(LN2/g;)V

    iput-object p2, p0, LN2/g;->c:LN2/f;

    invoke-virtual {p1, p2}, Ln1/a;->s(Ln1/a$c;)V

    return-void
.end method


# virtual methods
.method public final N1()LM2/a$b;
    .locals 1

    iget-object v0, p0, LN2/g;->a:LM2/a$b;

    return-object v0
.end method

.method public final P1()V
    .locals 0

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 0

    return-void
.end method

.method public final synthetic b()LM2/a$b;
    .locals 1

    iget-object v0, p0, LN2/g;->a:LM2/a$b;

    return-object v0
.end method
