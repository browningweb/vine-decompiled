.class public Lco/vine/android/LoginTwitterActivity;
.super Lco/vine/android/BaseActivity;
.source "LoginTwitterActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lco/vine/android/widget/SpanClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;
    }
.end annotation


# static fields
.field public static final EXTRA_FINISH:Ljava/lang/String; = "finish"

.field public static final EXTRA_SCREEN_NAME:Ljava/lang/String; = "screen_name"

.field public static final EXTRA_SECRET:Ljava/lang/String; = "secret"

.field public static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"

.field private static final SPAN_VINE_PP:I = 0x1

.field private static final SPAN_VINE_TOS:I = 0x2


# instance fields
.field private mFinish:Z

.field private mPassword:Landroid/widget/EditText;

.field private mSignIn:Landroid/view/MenuItem;

.field private mUsername:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/LoginTwitterActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lco/vine/android/LoginTwitterActivity;->login()V

    return-void
.end method

.method static synthetic access$100(Lco/vine/android/LoginTwitterActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lco/vine/android/LoginTwitterActivity;->mFinish:Z

    return v0
.end method

.method private login()V
    .locals 4

    .prologue
    .line 160
    invoke-direct {p0}, Lco/vine/android/LoginTwitterActivity;->validate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 162
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lco/vine/android/LoginTwitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 163
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 164
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 165
    iput-object v0, p0, Lco/vine/android/LoginTwitterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 166
    iget-object v1, p0, Lco/vine/android/LoginTwitterActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/LoginTwitterActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/LoginTwitterActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/vine/android/client/AppController;->loginWithxAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method

.method private validate()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 156
    iget-object v1, p0, Lco/vine/android/LoginTwitterActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lco/vine/android/LoginTwitterActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 153
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 142
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 59
    const v10, 0x7f030034

    const/4 v11, 0x0

    invoke-super {p0, p1, v10, v11}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 61
    invoke-virtual {p0}, Lco/vine/android/LoginTwitterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, ab:Landroid/app/ActionBar;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 63
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 64
    const v10, 0x7f07005e

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setTitle(I)V

    .line 66
    const v10, 0x7f090030

    invoke-virtual {p0, v10}, Lco/vine/android/LoginTwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, p0, Lco/vine/android/LoginTwitterActivity;->mUsername:Landroid/widget/EditText;

    .line 67
    iget-object v10, p0, Lco/vine/android/LoginTwitterActivity;->mUsername:Landroid/widget/EditText;

    invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    iget-object v10, p0, Lco/vine/android/LoginTwitterActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v10, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    const v10, 0x7f090033

    invoke-virtual {p0, v10}, Lco/vine/android/LoginTwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, p0, Lco/vine/android/LoginTwitterActivity;->mPassword:Landroid/widget/EditText;

    .line 72
    iget-object v10, p0, Lco/vine/android/LoginTwitterActivity;->mPassword:Landroid/widget/EditText;

    invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    iget-object v10, p0, Lco/vine/android/LoginTwitterActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v10, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    iget-object v10, p0, Lco/vine/android/LoginTwitterActivity;->mPassword:Landroid/widget/EditText;

    new-instance v11, Lco/vine/android/LoginTwitterActivity$1;

    invoke-direct {v11, p0}, Lco/vine/android/LoginTwitterActivity$1;-><init>(Lco/vine/android/LoginTwitterActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 85
    invoke-virtual {p0}, Lco/vine/android/LoginTwitterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "finish"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lco/vine/android/LoginTwitterActivity;->mFinish:Z

    .line 87
    new-instance v10, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;

    invoke-direct {v10, p0}, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;-><init>(Lco/vine/android/LoginTwitterActivity;)V

    iput-object v10, p0, Lco/vine/android/LoginTwitterActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 89
    const v10, 0x7f09008e

    invoke-virtual {p0, v10}, Lco/vine/android/LoginTwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 90
    .local v5, mTos:Landroid/widget/TextView;
    const/4 v10, 0x2

    new-array v1, v10, [Landroid/text/style/StyleSpan;

    const/4 v10, 0x0

    new-instance v11, Landroid/text/style/StyleSpan;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v11, v1, v10

    const/4 v10, 0x1

    new-instance v11, Landroid/text/style/StyleSpan;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v11, v1, v10

    .line 92
    .local v1, boldStyle:[Landroid/text/style/StyleSpan;
    const v10, 0x7f070060

    invoke-virtual {p0, v10}, Lco/vine/android/LoginTwitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x22

    invoke-static {v1, v10, v11}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v7

    .line 95
    .local v7, spanned:Landroid/text/Spanned;
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 98
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 99
    .local v2, clickSpannable:Landroid/text/Spannable;
    const/4 v10, 0x0

    invoke-interface {v7}, Landroid/text/Spanned;->length()I

    move-result v11

    const-class v12, Landroid/text/style/StyleSpan;

    invoke-interface {v7, v10, v11, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/StyleSpan;

    .line 100
    .local v8, spans:[Landroid/text/style/StyleSpan;
    invoke-virtual {p0}, Lco/vine/android/LoginTwitterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 103
    .local v6, res:Landroid/content/res/Resources;
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 104
    .local v9, start:I
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 105
    .local v4, end:I
    new-instance v3, Lco/vine/android/widget/StyledClickableSpan;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct {v3, v10, v11, p0}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 107
    .local v3, clickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const v10, 0x7f08002c

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 108
    const/16 v10, 0x21

    invoke-static {v2, v3, v9, v4, v10}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 112
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 113
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 114
    new-instance v3, Lco/vine/android/widget/StyledClickableSpan;

    .end local v3           #clickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v3, v10, v11, p0}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 115
    .restart local v3       #clickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const v10, 0x7f08002c

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 116
    const/16 v10, 0x21

    invoke-static {v2, v3, v9, v4, v10}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 118
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 122
    invoke-virtual {p0}, Lco/vine/android/LoginTwitterActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 123
    const v0, 0x7f0900a4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/LoginTwitterActivity;->mSignIn:Landroid/view/MenuItem;

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    invoke-super {p0, p1}, Lco/vine/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 131
    :pswitch_0
    invoke-direct {p0}, Lco/vine/android/LoginTwitterActivity;->login()V

    .line 132
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900a4
        :pswitch_0
    .end packed-switch
.end method

.method public onSpanClicked(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .parameter "view"
    .parameter "type"
    .parameter "tag"

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v0, i:Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 227
    :pswitch_0
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    :goto_1
    invoke-virtual {p0, v0}, Lco/vine/android/LoginTwitterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 231
    :pswitch_1
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 146
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity;->mSignIn:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity;->mSignIn:Landroid/view/MenuItem;

    invoke-direct {p0}, Lco/vine/android/LoginTwitterActivity;->validate()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 149
    :cond_0
    return-void
.end method
