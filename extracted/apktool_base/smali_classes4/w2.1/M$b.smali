.class public Lw2/M$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/M$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw2/M;->i(Ljava/lang/String;)Lw2/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lw2/M$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lw2/M;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lw2/M$b;->b(Lw2/M;Ljava/lang/CharSequence;)Lw2/M$g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lw2/M;Ljava/lang/CharSequence;)Lw2/M$g;
    .locals 1

    new-instance v0, Lw2/M$b$a;

    invoke-direct {v0, p0, p1, p2}, Lw2/M$b$a;-><init>(Lw2/M$b;Lw2/M;Ljava/lang/CharSequence;)V

    return-object v0
.end method
