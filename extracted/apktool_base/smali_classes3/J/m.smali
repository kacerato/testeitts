.class public LJ/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJ/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final b:I = 0xfa


# instance fields
.field public final a:LY/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LY/h<",
            "LJ/m$b<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0xfa

    .line 1
    invoke-direct {p0, v0, v1}, LJ/m;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, LJ/m$a;

    invoke-direct {v0, p0, p1, p2}, LJ/m$a;-><init>(LJ/m;J)V

    iput-object v0, p0, LJ/m;->a:LY/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LJ/m;->a:LY/h;

    invoke-virtual {v0}, LY/h;->b()V

    return-void
.end method

.method public b(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LJ/m$b;->a(Ljava/lang/Object;II)LJ/m$b;

    move-result-object p1

    iget-object p2, p0, LJ/m;->a:LY/h;

    invoke-virtual {p2, p1}, LY/h;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, LJ/m$b;->c()V

    return-object p2
.end method

.method public c(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LJ/m$b;->a(Ljava/lang/Object;II)LJ/m$b;

    move-result-object p1

    iget-object p2, p0, LJ/m;->a:LY/h;

    invoke-virtual {p2, p1, p4}, LY/h;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
