.class public Lorg/ITsMagic/Atlas/e$a$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/e$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/e$a$a;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/e$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/e$a$a$c;->b:Lorg/ITsMagic/Atlas/e$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/ITsMagic/Atlas/e$a$a$c;->b:Lorg/ITsMagic/Atlas/e$a$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->j(Lorg/ITsMagic/Atlas/e;)V

    return-void
.end method
