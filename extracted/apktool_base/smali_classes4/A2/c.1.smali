.class public final synthetic LA2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# instance fields
.field public final synthetic b:LA2/a$b;


# direct methods
.method public synthetic constructor <init>(LA2/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA2/c;->b:LA2/a$b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LA2/c;->b:LA2/a$b;

    invoke-static {v0, p1}, LA2/a$b;->a(LA2/a$b;Ljava/lang/Object;)LA2/u;

    move-result-object p1

    return-object p1
.end method
