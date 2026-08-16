.class public final Lv0/i;
.super Lv0/o;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lv0/j;


# direct methods
.method public constructor <init>(Lv0/j;Lv0/q;)V
    .locals 0

    iput-object p1, p0, Lv0/i;->f:Lv0/j;

    invoke-direct {p0, p2}, Lv0/o;-><init>(Lv0/q;)V

    return-void
.end method


# virtual methods
.method public final F0([B)V
    .locals 1

    iget-object v0, p0, Lv0/i;->f:Lv0/j;

    iget-object v0, v0, Lv0/q;->d:Lv1/l;

    invoke-virtual {v0, p1}, Lv1/l;->c(Ljava/lang/Object;)V

    return-void
.end method
