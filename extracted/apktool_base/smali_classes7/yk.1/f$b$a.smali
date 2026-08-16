.class public Lyk/f$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyk/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyk/f$b;


# direct methods
.method public constructor <init>(Lyk/f$b;)V
    .locals 0

    iput-object p1, p0, Lyk/f$b$a;->a:Lyk/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILyk/f$b;)Lyk/f$b;
    .locals 0

    iget-object p1, p0, Lyk/f$b$a;->a:Lyk/f$b;

    invoke-static {p1}, Lyk/f$b;->a(Lyk/f$b;)Lyk/f$d;

    move-result-object p1

    invoke-static {p2, p1}, Lyk/f$b;->b(Lyk/f$b;Lyk/f$d;)Lyk/f$b;

    move-result-object p1

    return-object p1
.end method
