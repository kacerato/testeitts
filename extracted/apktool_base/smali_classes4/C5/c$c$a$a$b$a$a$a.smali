.class public LC5/c$c$a$a$b$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/c$c$a$a$b$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LC5/c$c$a$a$b$a$a;


# direct methods
.method public constructor <init>(LC5/c$c$a$a$b$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$6"
        }
    .end annotation

    iput-object p1, p0, LC5/c$c$a$a$b$a$a$a;->b:LC5/c$c$a$a$b$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, LA5/a;->y1()V

    return-void
.end method
