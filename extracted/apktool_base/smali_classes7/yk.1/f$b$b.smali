.class public Lyk/f$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyk/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyk/f$b;->y(ILyk/f$b;)Lyk/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lyk/f$b;

.field public final synthetic c:Lyk/f$b;


# direct methods
.method public constructor <init>(Lyk/f$b;ILyk/f$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lyk/f$b$b;->c:Lyk/f$b;

    iput p2, p0, Lyk/f$b$b;->a:I

    iput-object p3, p0, Lyk/f$b$b;->b:Lyk/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILyk/f$b;)Lyk/f$b;
    .locals 1

    iget v0, p0, Lyk/f$b$b;->a:I

    if-ne v0, p1, :cond_0

    iget-object p2, p0, Lyk/f$b$b;->b:Lyk/f$b;

    :cond_0
    return-object p2
.end method
