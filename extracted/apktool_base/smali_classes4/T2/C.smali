.class public final synthetic LT2/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/a$a;


# instance fields
.field public final synthetic a:La3/a$a;

.field public final synthetic b:La3/a$a;


# direct methods
.method public synthetic constructor <init>(La3/a$a;La3/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT2/C;->a:La3/a$a;

    iput-object p2, p0, LT2/C;->b:La3/a$a;

    return-void
.end method


# virtual methods
.method public final a(La3/b;)V
    .locals 2

    iget-object v0, p0, LT2/C;->a:La3/a$a;

    iget-object v1, p0, LT2/C;->b:La3/a$a;

    invoke-static {v0, v1, p1}, LT2/D;->c(La3/a$a;La3/a$a;La3/b;)V

    return-void
.end method
