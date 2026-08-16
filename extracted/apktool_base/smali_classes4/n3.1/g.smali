.class public final synthetic Ln3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/k;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ln3/h$a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ln3/h$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/g;->a:Ljava/lang/String;

    iput-object p2, p0, Ln3/g;->b:Ln3/h$a;

    return-void
.end method


# virtual methods
.method public final a(LT2/h;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ln3/g;->a:Ljava/lang/String;

    iget-object v1, p0, Ln3/g;->b:Ln3/h$a;

    invoke-static {v0, v1, p1}, Ln3/h;->a(Ljava/lang/String;Ln3/h$a;LT2/h;)Ln3/f;

    move-result-object p1

    return-object p1
.end method
