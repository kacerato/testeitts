.class public Lvk/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltk/j;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LQk/q;


# direct methods
.method public constructor <init>(Ljava/lang/String;LQk/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvk/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lvk/d;->b:LQk/q;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lvk/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()LQk/q;
    .locals 1

    iget-object v0, p0, Lvk/d;->b:LQk/q;

    return-object v0
.end method
