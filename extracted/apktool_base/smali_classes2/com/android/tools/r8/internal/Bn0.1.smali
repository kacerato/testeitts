.class public final Lcom/android/tools/r8/internal/Bn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Dn0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/XK;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/XK;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Bn0;->a:Lcom/android/tools/r8/internal/XK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/En0;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bn0;->a:Lcom/android/tools/r8/internal/XK;

    new-instance v1, Lcom/android/tools/r8/internal/WK;

    iget-object v0, v0, Lcom/android/tools/r8/internal/XK;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/WK;-><init>(Ljava/util/regex/Matcher;)V

    new-instance v0, Lcom/android/tools/r8/internal/An0;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/An0;-><init>(Lcom/android/tools/r8/internal/En0;Ljava/lang/String;Lcom/android/tools/r8/internal/WK;)V

    return-object v0
.end method
