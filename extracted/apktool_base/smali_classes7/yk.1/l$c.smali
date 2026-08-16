.class public Lyk/l$c;
.super Lyk/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Loh/g;


# direct methods
.method public constructor <init>(Loh/g;)V
    .locals 0

    invoke-direct {p0}, Lyk/l;-><init>()V

    iput-object p1, p0, Lyk/l$c;->a:Loh/g;

    return-void
.end method


# virtual methods
.method public a(I)Loh/g;
    .locals 0

    iget-object p1, p0, Lyk/l$c;->a:Loh/g;

    return-object p1
.end method
