/**
 * Widget module.
 *
 * License:
 *     MIT. See LICENSE for full details.
 */
module tkd.widget.button;

/**
 * Imports.
 */
import tkd.element.uielement;
import tkd.image.image;
import tkd.image.imageposition;
import tkd.widget.common.command;
import tkd.widget.common.default_;
import tkd.widget.common.invoke;
import tkd.widget.common.width;
import tkd.widget.textwidget;
import tkd.widget.widget;

/**
 * Class representing a button widget.
 *
 * Common_Commands:
 *     These are common commands that can be used with this widget.
 *     $(P
 *         $(LINK2 ./common/command.html, Command) $(BR)
 *         $(LINK2 ./common/default_.html, Default) $(BR)
 *         $(LINK2 ./common/invoke.html, Invoke) $(BR)
 *         $(LINK2 ./common/width.html, Width) $(BR)
 *     )
 *
 * See_Also:
 *     $(LINK2 ./textwidget.html, tkd.widget.textwidget)
 */
class Button : TextWidget
{
	/**
	 * Construct the widget.
	 *
	 * Params:
	 *     parent = The parent of this widget.
	 *     text = The text of the button.
	 *     image = The tool button image.
	 *     imagePosition = The position of the image in relation to the text.
	 *
	 * See_Also:
	 *     $(LINK2 ../element/uielement.html, tkd.element.UiElement) $(BR)
	 *     $(LINK2 ../image/image.html, tkd.image.image) $(BR)
	 *     $(LINK2 ../image/png.html, tkd.image.png) $(BR)
	 *     $(LINK2 ../image/gif.html, tkd.image.gif) $(BR)
	 *     $(LINK2 ../image/imageposition.html, tkd.image.imageposition) $(BR)
	 */
	this(UiElement parent, string text, Image image = null, string imagePosition = ImagePosition.top)
	{
		super(parent);
		this._elementId = "button";

		this._tk.eval("ttk::button %s -textvariable %s", this.id, this._textVariable);

		this.setText(text);

		if (image !is null)
		{
			this.setImage(image, imagePosition);
		}
	}

	/**
	 * Construct the widget.
	 *
	 * Params:
	 *     parent = The parent of this widget.
	 *     image = The tool button image.
	 *     text = The text of the button.
	 *     imagePosition = The position of the image in relation to the text.
	 *
	 * See_Also:
	 *     $(LINK2 ../element/uielement.html, tkd.element.UiElement) $(BR)
	 *     $(LINK2 ../image/image.html, tkd.image.image) $(BR)
	 *     $(LINK2 ../image/png.html, tkd.image.png) $(BR)
	 *     $(LINK2 ../image/gif.html, tkd.image.gif) $(BR)
	 *     $(LINK2 ../image/imageposition.html, tkd.image.imageposition) $(BR)
	 */
	this(UiElement parent, Image image, string text = null, string imagePosition = ImagePosition.image)
	{
		this(parent, text, image, imagePosition);
	}

	/**
	 * Construct the widget.
	 *
	 * Params:
	 *     text = The text of the button.
	 *     image = The tool button image.
	 *     imagePosition = The position of the image in relation to the text.
	 *
	 * See_Also:
	 *     $(LINK2 ../image/image.html, tkd.image.image) $(BR)
	 *     $(LINK2 ../image/png.html, tkd.image.png) $(BR)
	 *     $(LINK2 ../image/gif.html, tkd.image.gif) $(BR)
	 *     $(LINK2 ../image/imageposition.html, tkd.image.imageposition) $(BR)
	 */
	this(string text, Image image = null, string imagePosition = ImagePosition.top)
	{
		this(null, text, image, imagePosition);
	}

	/**
	 * Construct the widget.
	 *
	 * Params:
	 *     image = The tool button image.
	 *     text = The text of the button.
	 *     imagePosition = The position of the image in relation to the text.
	 *
	 * See_Also:
	 *     $(LINK2 ../image/image.html, tkd.image.image) $(BR)
	 *     $(LINK2 ../image/png.html, tkd.image.png) $(BR)
	 *     $(LINK2 ../image/gif.html, tkd.image.gif) $(BR)
	 *     $(LINK2 ../image/imageposition.html, tkd.image.imageposition) $(BR)
	 */
	this(Image image, string text = null, string imagePosition = ImagePosition.image)
	{
		this(parent, image, text, imagePosition);
	}

	/**
	 * Mixin common commands.
	 */
	mixin Command;
	mixin Default_;
	mixin Invoke;
	mixin Width;
}
