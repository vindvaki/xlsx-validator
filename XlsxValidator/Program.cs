using System;
using System.Linq;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Validation;

// Adapted from
// https://blogs.msdn.microsoft.com/ericwhite/2010/03/04/validate-open-xml-documents-using-the-open-xml-sdk-2-0/

namespace XlsxValidator
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			if (args.Count() == 0)
			{
				Console.WriteLine("No document given");
				return;
			}
			var path = args[0];

			using (SpreadsheetDocument doc = SpreadsheetDocument.Open(path, false))
			{
				var validator = new OpenXmlValidator();
				var errors = validator.Validate(doc);
				if (errors.Count() == 0)
				{
					Console.WriteLine("Document is valid");
				}
				else
				{
					Console.WriteLine("Document is not valid");
				}
				Console.WriteLine();
				foreach (var error in errors)
				{
					Console.WriteLine("File: {0}", path);
					Console.WriteLine("Error: {0}", error.Description);
					Console.WriteLine("ContentType: {0}", error.Part.ContentType);
					Console.WriteLine("XPath: {0}", error.Path.XPath);
					Console.WriteLine();
				}
			}
		}
	}
}