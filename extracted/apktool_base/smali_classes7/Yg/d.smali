.class public final synthetic LYg/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/l;


# instance fields
.field public final synthetic b:LYg/j;


# direct methods
.method public synthetic constructor <init>(LYg/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LYg/d;->b:LYg/j;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LYg/d;->b:LYg/j;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, LYg/j;->e(LYg/j;F)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
