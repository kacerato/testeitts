.class public final synthetic Lcom/github/javaparser/printer/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;

.field public final synthetic c:Ljava/lang/Void;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/D;->b:Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;

    iput-object p2, p0, Lcom/github/javaparser/printer/D;->c:Ljava/lang/Void;

    iput-object p3, p0, Lcom/github/javaparser/printer/D;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/github/javaparser/printer/D;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/github/javaparser/printer/D;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/github/javaparser/printer/D;->b:Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;

    iget-object v1, p0, Lcom/github/javaparser/printer/D;->c:Ljava/lang/Void;

    iget-object v2, p0, Lcom/github/javaparser/printer/D;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Lcom/github/javaparser/printer/D;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, p0, Lcom/github/javaparser/printer/D;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v5, p1

    check-cast v5, Lcom/github/javaparser/ast/expr/Expression;

    invoke-static/range {v0 .. v5}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->n(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/github/javaparser/ast/expr/Expression;)V

    return-void
.end method
