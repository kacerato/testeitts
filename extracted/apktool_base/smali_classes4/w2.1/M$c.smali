.class public Lw2/M$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/M$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw2/M;->l(Lw2/h;)Lw2/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw2/h;


# direct methods
.method public constructor <init>(Lw2/h;)V
    .locals 0

    iput-object p1, p0, Lw2/M$c;->a:Lw2/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lw2/M;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lw2/M$c;->b(Lw2/M;Ljava/lang/CharSequence;)Lw2/M$g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lw2/M;Ljava/lang/CharSequence;)Lw2/M$g;
    .locals 2

    iget-object v0, p0, Lw2/M$c;->a:Lw2/h;

    invoke-virtual {v0, p2}, Lw2/h;->d(Ljava/lang/CharSequence;)Lw2/g;

    move-result-object v0

    new-instance v1, Lw2/M$c$a;

    invoke-direct {v1, p0, p1, p2, v0}, Lw2/M$c$a;-><init>(Lw2/M$c;Lw2/M;Ljava/lang/CharSequence;Lw2/g;)V

    return-object v1
.end method
