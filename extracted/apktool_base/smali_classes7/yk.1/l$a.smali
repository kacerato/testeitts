.class public Lyk/l$a;
.super Lyk/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Loh/h;


# direct methods
.method public constructor <init>(Loh/h;)V
    .locals 0

    invoke-direct {p0}, Lyk/l;-><init>()V

    iput-object p1, p0, Lyk/l$a;->a:Loh/h;

    return-void
.end method


# virtual methods
.method public a(I)Loh/g;
    .locals 1

    iget-object v0, p0, Lyk/l$a;->a:Loh/h;

    invoke-virtual {v0, p1}, Loh/h;->g(I)Loh/g;

    move-result-object p1

    return-object p1
.end method
