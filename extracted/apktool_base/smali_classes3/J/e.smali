.class public final LJ/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJ/e$c;,
        LJ/e$b;,
        LJ/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LJ/n<",
        "TModel;TData;>;"
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "data:image"

.field public static final c:Ljava/lang/String; = ";base64"


# instance fields
.field public final a:LJ/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ/e$a<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LJ/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/e$a<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/e;->a:LJ/e$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;IILC/h;)LJ/n$a;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LC/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "LC/h;",
            ")",
            "LJ/n$a<",
            "TData;>;"
        }
    .end annotation

    new-instance p2, LJ/n$a;

    new-instance p3, LX/e;

    invoke-direct {p3, p1}, LX/e;-><init>(Ljava/lang/Object;)V

    new-instance p4, LJ/e$b;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LJ/e;->a:LJ/e$a;

    invoke-direct {p4, p1, v0}, LJ/e$b;-><init>(Ljava/lang/String;LJ/e$a;)V

    invoke-direct {p2, p3, p4}, LJ/n$a;-><init>(LC/e;LD/d;)V

    return-object p2
.end method
