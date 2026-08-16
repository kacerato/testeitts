.class public abstract Ldj/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Luh/o;


# direct methods
.method public constructor <init>(Luh/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldj/e;->a:Luh/o;

    return-void
.end method


# virtual methods
.method public abstract a()Loh/g;
.end method

.method public b()Loh/x;
    .locals 1

    iget-object v0, p0, Ldj/e;->a:Luh/o;

    invoke-virtual {v0}, Luh/o;->v()Loh/x;

    move-result-object v0

    return-object v0
.end method
