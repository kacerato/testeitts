.class public La8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La8/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La8/b;

    invoke-direct {v0}, La8/b;-><init>()V

    iput-object v0, p0, La8/a;->a:La8/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, La8/a;->a:La8/b;

    invoke-virtual {v0}, La8/b;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, La8/a;->a:La8/b;

    invoke-virtual {v0}, La8/b;->c()V

    return-void
.end method
