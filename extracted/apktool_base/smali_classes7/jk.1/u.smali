.class public Ljk/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljk/j;


# instance fields
.field public final a:Ljk/f;


# direct methods
.method public constructor <init>(Ljk/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljk/u;->a:Ljk/f;

    return-void
.end method


# virtual methods
.method public a(Ljk/i;)Ljk/i;
    .locals 1

    iget-object v0, p0, Ljk/u;->a:Ljk/f;

    invoke-virtual {p1, v0}, Ljk/i;->H(Ljk/f;)Ljk/i;

    move-result-object p1

    return-object p1
.end method
